module Holidays
  module Definition
    module Decorator
      class Test
        def call(t)
          src = ""

          t.dates.each do |d|
            date = "Date.civil(#{d.year}, #{d.month}, #{d.day})"

            holiday_call = "Holidays.on(#{date}, #{t.regions}"
            holiday_call += ", #{decorate_options(t.options)}" if t.options
            holiday_call += ")"

            if t.holiday?
              src += "    holidays = #{holiday_call}\n"
              src += "    matching_holiday = holidays.find { |hol| hol[:name] == \"#{t.name}\" }\n"
              src += "    assert_not_nil matching_holiday\n"
              src += "    assert_equal #{date}, matching_holiday[:date]\n"
              t.regions.each do |region|
                src += "    assert_includes matching_holiday[:regions], :#{region}\n"
              end
              src += "\n"

            else
              src += "    assert_nil (#{holiday_call}[0] || {})[:name]\n"
            end
          end

          src
        end

        private

        def decorate_options(options)
          options.map do |o|
            o.to_sym
          end
        end
      end
    end
  end
end

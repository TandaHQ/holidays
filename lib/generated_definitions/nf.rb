# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/nf.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module NF # :nodoc:
    def self.defined_regions
      [:nf]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Good Friday", :regions => [:nf]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Easter Monday", :regions => [:nf]}],
      1 => [{:mday => 1, :name => "New Year's Day", :regions => [:nf]},
            {:mday => 26, :name => "Australia Day", :regions => [:nf]}],
      3 => [{:mday => 6, :name => "Foundation Day", :regions => [:nf]}],
      4 => [{:mday => 2, :name => "Easter Monday", :regions => [:nf]},
            {:mday => 25, :name => "Anzac Day", :regions => [:nf]}],
      6 => [{:mday => 8, :name => "Bounty Day", :regions => [:nf]},
            {:function => "monday_after_second_saturday(year)", :function_arguments => [:year], :name => "Queen's Birthday", :regions => [:nf]}],
      10 => [{:wday => 1, :week => 2, :name => "Norfolk Island Agricultural Show", :regions => [:nf]}],
      11 => [{:wday => 3, :week => 4, :name => "Thanksgiving Day", :regions => [:nf]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:nf]},
            {:mday => 26, :name => "Boxing Day", :regions => [:nf]}]
      }
    end

    def self.custom_methods
      {
        "monday_after_second_saturday(year)" => Proc.new { |year|
second_sat_in_jun = Date.civil(year, 6, Holidays::Factory::DateCalculator.day_of_month_calculator.call(year, 6, 2, :saturday))
second_sat_in_jun + 2
},


      }
    end
  end
end

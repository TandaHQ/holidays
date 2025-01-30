# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/ie.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module IE # :nodoc:
    def self.defined_regions
      [:ie]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Easter Monday", :regions => [:ie]}],
      1 => [{:mday => 1, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "New Year's Day", :regions => [:ie]}],
      2 => [{:wday => 1, :week => 1, :name => "St Brigid's Day", :regions => [:ie]}],
      3 => [{:mday => 17, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "St. Patrick's Day", :regions => [:ie]}],
      5 => [{:wday => 1, :week => 1, :name => "May Day", :regions => [:ie]}],
      6 => [{:wday => 1, :week => 1, :name => "June Bank Holiday", :regions => [:ie]}],
      8 => [{:wday => 1, :week => 1, :name => "August Bank Holiday", :regions => [:ie]}],
      10 => [{:wday => 1, :week => -1, :name => "October Bank Holiday", :regions => [:ie]}],
      12 => [{:mday => 25, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Christmas Day", :regions => [:ie]},
            {:mday => 26, :observed => "to_weekday_if_boxing_weekend(date)", :observed_arguments => [:date], :name => "St. Stephen's Day", :regions => [:ie]}]
      }
    end

    def self.custom_methods
      {
        
      }
    end
  end
end

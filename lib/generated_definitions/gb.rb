# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/gb.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module GB # :nodoc:
    def self.defined_regions
      [:gb, :gb_eng, :gb_wls, :gb_eaw, :gb_nir, :je, :gb_jsy, :gg, :gb_gsy, :gb_sct, :gb_con, :im, :gb_iom]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Good Friday", :regions => [:gb]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Easter Monday", :regions => [:gb_eng, :gb_wls, :gb_eaw, :gb_nir, :je, :gb_jsy, :gg, :gb_gsy]}],
      1 => [{:mday => 1, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "New Year's Day", :regions => [:gb]},
            {:mday => 2, :observed => "to_weekday_if_boxing_weekend(date)", :observed_arguments => [:date], :name => "2nd January", :regions => [:gb_sct]}],
      3 => [{:mday => 5, :name => "St. Piran's Day", :regions => [:gb_con]},
            {:mday => 17, :name => "St. Patrick's Day", :regions => [:gb_nir]}],
      5 => [{:wday => 1, :week => 1, :name => "Early May Bank Holiday", :regions => [:gb]},
            {:mday => 9, :name => "Liberation Day", :regions => [:je, :gb_jsy, :gg, :gb_gsy]},
            {:wday => 1, :week => -1,  :year_ranges => [{:before => 2021},{:after => 2023}],:name => "Spring Bank Holiday", :regions => [:gb]}],
      6 => [{:mday => 2,  :year_ranges => [{:limited => [2022]}],:name => "Spring Bank Holiday", :regions => [:gb]},
            {:mday => 3,  :year_ranges => [{:limited => [2022]}],:name => "Platinum Jubilee Bank Holiday", :regions => [:gb]}],
      7 => [{:mday => 5, :name => "Tynwald Day", :regions => [:im, :gb_iom]},
            {:mday => 12, :name => "Battle of the Boyne", :regions => [:gb_nir]}],
      8 => [{:wday => 1, :week => 1, :name => "Bank Holiday", :regions => [:gb_sct]},
            {:wday => 1, :week => -1, :name => "Summer Bank Holiday", :regions => [:gb_eng, :gb_wls, :gb_eaw, :gb_nir, :je, :gb_jsy, :gg, :gb_gsy]}],
      9 => [{:mday => 19,  :year_ranges => [{:limited => [2022]}],:name => "Bank Holiday for the State Funeral of Queen Elizabeth II", :regions => [:gb]}],
      11 => [{:mday => 5, :type => :informal, :name => "Guy Fawkes Day", :regions => [:gb]},
            {:mday => 30,  :year_ranges => [{:before => 2006}],:observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :type => :informal, :name => "St. Andrew's Day", :regions => [:gb_sct]},
            {:mday => 30,  :year_ranges => [{:after => 2007}],:observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "St. Andrew's Day", :regions => [:gb_sct]}],
      12 => [{:mday => 25,  :year_ranges => [{:before => 2021},{:after => 2023}],:observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Christmas Day", :regions => [:gb]},
            {:mday => 26,  :year_ranges => [{:before => 2021},{:after => 2023}],:observed => "to_weekday_if_boxing_weekend(date)", :observed_arguments => [:date], :name => "Boxing Day", :regions => [:gb]},
            {:mday => 27,  :year_ranges => [{:limited => [2022]}],:name => "Christmas Day (substitute day)", :regions => [:gb]},
            {:mday => 26,  :year_ranges => [{:limited => [2022]}],:name => "Boxing Day", :regions => [:gb]}]
      }
    end

    def self.custom_methods
      {
        
      }
    end
  end
end

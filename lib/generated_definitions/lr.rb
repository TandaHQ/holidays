# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/lr.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module LR # :nodoc:
    def self.defined_regions
      [:lr]
    end

    def self.holidays_by_month
      {
              1 => [{:mday => 1, :name => "New Year's Day", :regions => [:lr]}],
      2 => [{:mday => 11, :name => "Armed Forces Day", :regions => [:lr]}],
      3 => [{:mday => 15, :name => "J.J. Roberts' Birthday", :regions => [:lr]},
            {:wday => 3, :week => 2, :name => "Decoration Day", :regions => [:lr]}],
      4 => [{:mday => 12, :name => "National Redemption Day", :regions => [:lr]},
            {:wday => 5, :week => 2, :name => "Fast and Prayer Day", :regions => [:lr]}],
      5 => [{:mday => 14, :name => "National Unification Day", :regions => [:lr]}],
      7 => [{:mday => 26, :name => "Independence Day", :regions => [:lr]}],
      8 => [{:mday => 24, :name => "Flag Day", :regions => [:lr]}],
      11 => [{:mday => 29, :name => "William Tubman's Birthday", :regions => [:lr]},
            {:wday => 4, :week => 1, :name => "National Thanksgiving Day", :regions => [:lr]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:lr]}]
      }
    end

    def self.custom_methods
      {
        
      }
    end
  end
end

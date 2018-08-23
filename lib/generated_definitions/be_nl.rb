# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/be_nl.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module BE_NL # :nodoc:
    def self.defined_regions
      [:be_nl]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :name => "Pasen", :regions => [:be_nl]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Paasmaandag", :regions => [:be_nl]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "O.H. Hemelvaart", :regions => [:be_nl]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 50, :name => "Pinkstermaandag", :regions => [:be_nl]}],
      1 => [{:mday => 1, :name => "Nieuwjaar", :regions => [:be_nl]}],
      5 => [{:mday => 1, :name => "Feest van de Arbeid", :regions => [:be_nl]}],
      7 => [{:mday => 21, :name => "Nationale Feestdag", :regions => [:be_nl]}],
      8 => [{:mday => 15, :name => "O.L.V. Hemelvaart", :regions => [:be_nl]}],
      11 => [{:mday => 1, :name => "Allerheiligen", :regions => [:be_nl]},
            {:mday => 11, :name => "Wapenstilstand 1918", :regions => [:be_nl]}],
      12 => [{:mday => 25, :name => "Kerstmis", :regions => [:be_nl]}]
      }
    end

    def self.custom_methods
      {
        
      }
    end
  end
end

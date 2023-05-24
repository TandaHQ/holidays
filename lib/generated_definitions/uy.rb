# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/uy.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module UY # :nodoc:
    def self.defined_regions
      [:uy]
    end

    def self.holidays_by_month
      {
              1 => [{:mday => 1, :name => "Año Nuevo", :regions => [:uy]}],
      5 => [{:mday => 1, :name => "Dia Del Trabajador", :regions => [:uy]}],
      7 => [{:mday => 18, :name => "Jura Constitución", :regions => [:uy]}],
      8 => [{:mday => 25, :name => "Día Independencia", :regions => [:uy]}],
      12 => [{:mday => 25, :name => "Navidad", :regions => [:uy]}]
      }
    end

    def self.custom_methods
      {
        
      }
    end
  end
end

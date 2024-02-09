# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/cy.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module CY # :nodoc:
    def self.defined_regions
      [:cy]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "orthodox_easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Μεγάλη Παρασκευή", :regions => [:cy]},
            {:function => "orthodox_easter(year)", :function_arguments => [:year], :function_modifier => -1, :name => "Μεγάλο Σάββατο", :regions => [:cy]},
            {:function => "orthodox_easter(year)", :function_arguments => [:year], :name => "Κυριακή του Πάσχα", :regions => [:cy]},
            {:function => "orthodox_easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Δευτέρα του Πάσχα", :regions => [:cy]},
            {:function => "orthodox_easter(year)", :function_arguments => [:year], :function_modifier => -48, :name => "Καθαρά Δευτέρα", :regions => [:cy]},
            {:function => "orthodox_easter(year)", :function_arguments => [:year], :function_modifier => 50, :name => "Αγίου Πνεύματος", :regions => [:cy]}],
      1 => [{:mday => 1, :name => "Πρωτοχρονιά", :regions => [:cy]},
            {:mday => 6, :name => "Θεοφάνεια", :regions => [:cy]}],
      3 => [{:mday => 25, :name => "Επέτειος της Επανάστασης του 1821", :regions => [:cy]}],
      4 => [{:mday => 1, :name => "Εθνική Ημέρα της Κύπρου", :regions => [:cy]}],
      5 => [{:mday => 1, :name => "Πρωτομαγιά", :regions => [:cy]}],
      8 => [{:mday => 15, :name => "Κοίμηση της Θεοτόκου", :regions => [:cy]}],
      10 => [{:mday => 1, :name => "Ημέρα Ανεξαρτησίας", :regions => [:cy]},
            {:mday => 28, :name => "Επέτειος του Όχι", :regions => [:cy]}],
      12 => [{:mday => 25, :name => "Χριστούγεννα", :regions => [:cy]},
            {:mday => 26, :name => "Ημέρα Πυγμαχίας", :regions => [:cy]}]
      }
    end

    def self.custom_methods
      {
        
      }
    end
  end
end
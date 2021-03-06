# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/fi.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module FI # :nodoc:
    def self.defined_regions
      [:fi]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Pitkäperjantai", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :name => "Pääsiäispäivä", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "2. Pääsiäispäivä", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "Helatorstai", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 49, :name => "Helluntaipäivä", :regions => [:fi]},
            {:function => "fi_pyhainpaiva(year)", :function_arguments => [:year], :name => "Pyhäinpäivä", :regions => [:fi]}],
      1 => [{:mday => 1, :name => "Uudenvuodenpäivä", :regions => [:fi]},
            {:mday => 6, :name => "Loppiainen", :regions => [:fi]}],
      5 => [{:mday => 1, :name => "Vappu", :regions => [:fi]}],
      6 => [{:function => "fi_juhannusaatto(year)", :function_arguments => [:year], :name => "Juhannusaatto", :regions => [:fi]},
            {:function => "fi_juhannuspaiva(year)", :function_arguments => [:year], :name => "Juhannuspäivä", :regions => [:fi]}],
      12 => [{:mday => 6, :name => "Itsenäisyyspäivä", :regions => [:fi]},
            {:mday => 24, :name => "Jouluaatto", :regions => [:fi]},
            {:mday => 25, :name => "Joulupäivä", :regions => [:fi]},
            {:mday => 26, :name => "Tapaninpäivä", :regions => [:fi]}]
      }
    end

    def self.custom_methods
      {
        "fi_juhannusaatto(year)" => Proc.new { |year|
date = Date.civil(year,6,19)
if date.wday > 5 #if 19.6 is saturday
  date += 6
else
  date += (5 - date.wday)
end
date
},

"fi_juhannuspaiva(year)" => Proc.new { |year|
date = Date.civil(year,6,20)
date += (6 - date.wday)
date
},

"fi_pyhainpaiva(year)" => Proc.new { |year|
date = Date.civil(year,10,31)
date += (6 - date.wday)
date
},


      }
    end
  end
end

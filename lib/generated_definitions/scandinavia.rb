# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/dk.yaml, definitions/is.yaml, definitions/no.yaml, definitions/se.yaml, definitions/fi.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module SCANDINAVIA # :nodoc:
    def self.defined_regions
      [:dk, :is, :no, :se, :fi]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -49, :type => :informal, :name => "Fastelavn", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -3, :name => "Skærtorsdag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Langfredag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :name => "Påskedag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "2. påskedag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 26, :name => "Store Bededag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "Kristi Himmelfartsdag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 49, :name => "Pinsedag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 50, :name => "2. Pinsedag", :regions => [:dk]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -48, :name => "Bolludagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -47, :name => "Sprengidagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -46, :name => "Öskudagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -7, :name => "Pálmasunnudagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -3, :name => "Skírdagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Föstudaginn langi", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :name => "Páskadagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Annar í páskum", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "Uppstigningardagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 49, :name => "Hvítasunnudagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 50, :name => "Annar í hvítasunnu", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -49, :type => :informal, :name => "Fastelavn", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -3, :name => "Skjærtorsdag", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Langfredag", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :name => "1. påskedag", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "2. påskedag", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "Kristi Himmelfartsdag", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 49, :name => "1. pinsedag", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 50, :name => "2. pinsedag", :regions => [:no]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Långfredagen", :regions => [:se]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -1, :type => :informal, :name => "Påskafton", :regions => [:se]},
            {:function => "easter(year)", :function_arguments => [:year], :name => "Påskdagen", :regions => [:se]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Annandag påsk", :regions => [:se]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "Kristi himmelsfärdsdag", :regions => [:se]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 49, :name => "Pingstdagen", :regions => [:se]},
            {:function => "se_alla_helgons_dag(year)", :function_arguments => [:year], :name => "Alla helgons dag", :regions => [:se]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Pitkäperjantai", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :name => "Pääsiäispäivä", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "2. Pääsiäispäivä", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "Helatorstai", :regions => [:fi]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 49, :name => "Helluntaipäivä", :regions => [:fi]},
            {:function => "fi_pyhainpaiva(year)", :function_arguments => [:year], :name => "Pyhäinpäivä", :regions => [:fi]}],
      1 => [{:mday => 1, :name => "Nytårsdag", :regions => [:dk]},
            {:mday => 1, :name => "Nýársdagur", :regions => [:is]},
            {:mday => 6, :name => "Þrettándinn", :regions => [:is]},
            {:mday => 19, :type => :informal, :name => "Bóndadagur", :regions => [:is]},
            {:mday => 1, :name => "Nyttårsdag", :regions => [:no]},
            {:mday => 1, :name => "Nyårsdagen", :regions => [:se]},
            {:mday => 6, :name => "Trettondedag jul", :regions => [:se]},
            {:mday => 1, :name => "Uudenvuodenpäivä", :regions => [:fi]},
            {:mday => 6, :name => "Loppiainen", :regions => [:fi]}],
      4 => [{:mday => 1, :type => :informal, :name => "1. april", :regions => [:dk]},
            {:mday => 9, :type => :informal, :name => "Danmarks besættelse", :regions => [:dk]},
            {:mday => 16, :type => :informal, :name => "Dronningens fødselsdag", :regions => [:dk]},
            {:function => "is_sumardagurinn_fyrsti(year)", :function_arguments => [:year], :name => "Sumardagurinn fyrsti", :regions => [:is]}],
      5 => [{:mday => 1, :type => :informal, :name => "Arbejdernes kampdag", :regions => [:dk]},
            {:mday => 5, :type => :informal, :name => "Danmarks befrielse", :regions => [:dk]},
            {:mday => 1, :name => "Verkalýðsdagurinn", :regions => [:is]},
            {:mday => 13, :name => "Mæðradagurinn", :regions => [:is]},
            {:mday => 1, :name => "1. mai", :regions => [:no]},
            {:mday => 17, :name => "17. mai", :regions => [:no]},
            {:mday => 1, :name => "Första maj", :regions => [:se]},
            {:mday => 1, :name => "Vappu", :regions => [:fi]}],
      6 => [{:mday => 5, :type => :informal, :name => "Grundlovsdag", :regions => [:dk]},
            {:mday => 15, :type => :informal, :name => "Valdemarsdag og Genforeningsdag", :regions => [:dk]},
            {:mday => 23, :type => :informal, :name => "Sankt Hans aften", :regions => [:dk]},
            {:mday => 3, :type => :informal, :name => "Sjómannadagurinn", :regions => [:is]},
            {:mday => 17, :name => "Lýðveldisdagurinn", :regions => [:is]},
            {:mday => 6, :name => "Nationaldagen", :regions => [:se]},
            {:function => "se_midsommardagen(year)", :function_arguments => [:year], :name => "Midsommardagen", :regions => [:se]},
            {:function => "se_midsommardagen(year)", :function_arguments => [:year], :function_modifier => -1, :type => :informal, :name => "Midsommarafton", :regions => [:se]},
            {:function => "fi_juhannusaatto(year)", :function_arguments => [:year], :name => "Juhannusaatto", :regions => [:fi]},
            {:function => "fi_juhannuspaiva(year)", :function_arguments => [:year], :name => "Juhannuspäivä", :regions => [:fi]}],
      11 => [{:mday => 10, :type => :informal, :name => "Mortensaften", :regions => [:dk]},
            {:mday => 16, :name => "Dagur íslenskrar tungu", :regions => [:is]}],
      12 => [{:mday => 13, :type => :informal, :name => "Sankt Lucia", :regions => [:dk]},
            {:mday => 24, :type => :informal, :name => "Juleaftensdag", :regions => [:dk]},
            {:mday => 25, :name => "1. juledag", :regions => [:dk]},
            {:mday => 26, :name => "2. juledag", :regions => [:dk]},
            {:mday => 24, :name => "Jól", :regions => [:is]},
            {:mday => 25, :name => "Jól", :regions => [:is]},
            {:mday => 26, :name => "Jól", :regions => [:is]},
            {:mday => 31, :name => "Gamlárskvöld", :regions => [:is]},
            {:mday => 24, :type => :informal, :name => "Julaften", :regions => [:no]},
            {:mday => 25, :name => "1. juledag", :regions => [:no]},
            {:mday => 26, :name => "2. juledag", :regions => [:no]},
            {:mday => 31, :type => :informal, :name => "Nyttårsaften", :regions => [:no]},
            {:mday => 24, :type => :informal, :name => "Julafton", :regions => [:se]},
            {:mday => 25, :name => "Juldagen", :regions => [:se]},
            {:mday => 26, :name => "Annandag jul", :regions => [:se]},
            {:mday => 31, :type => :informal, :name => "Nyårsafton", :regions => [:se]},
            {:mday => 6, :name => "Itsenäisyyspäivä", :regions => [:fi]},
            {:mday => 24, :name => "Jouluaatto", :regions => [:fi]},
            {:mday => 25, :name => "Joulupäivä", :regions => [:fi]},
            {:mday => 26, :name => "Tapaninpäivä", :regions => [:fi]}],
      2 => [{:mday => 18, :type => :informal, :name => "Konudagur", :regions => [:is]}],
      8 => [{:wday => 1, :week => 1, :name => "Frídagur verslunarmanna", :regions => [:is]}]
      }
    end

    def self.custom_methods
      {
        "is_sumardagurinn_fyrsti(year)" => Proc.new { |year|
date = Date.civil(year,4,18)
if date.wday < 4
  date += (4 - date.wday)
else
  date += (11 - date.wday)
end
date
},

"se_midsommardagen(year)" => Proc.new { |year|
date = Date.civil(year,6,20)
date += (6 - date.wday)
date
},

"se_alla_helgons_dag(year)" => Proc.new { |year|
date = Date.civil(year,10,31)
date += (6 - date.wday)
date
},

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

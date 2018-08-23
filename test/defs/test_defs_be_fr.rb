# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/be_fr.yaml
class Be_frDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_be_fr
    assert_equal "Jour de l'an", (Holidays.on(Date.civil(2007, 1, 1), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Pâques", (Holidays.on(Date.civil(2007, 4, 8), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Lundi de Pâques", (Holidays.on(Date.civil(2007, 4, 9), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Fête du travail", (Holidays.on(Date.civil(2007, 5, 1), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Ascension", (Holidays.on(Date.civil(2007, 5, 17), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Lundi de Pentecôte", (Holidays.on(Date.civil(2007, 5, 28), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Fête nationale", (Holidays.on(Date.civil(2007, 7, 21), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Assomption", (Holidays.on(Date.civil(2007, 8, 15), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Toussaint", (Holidays.on(Date.civil(2007, 11, 1), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Armistice 1918", (Holidays.on(Date.civil(2007, 11, 11), [:be_fr], [:informal])[0] || {})[:name]

    assert_equal "Noël", (Holidays.on(Date.civil(2007, 12, 25), [:be_fr], [:informal])[0] || {})[:name]

  end
end

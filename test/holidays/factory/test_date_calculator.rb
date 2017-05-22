require File.expand_path(File.dirname(__FILE__)) + '/../../test_helper'

require 'holidays/factory/date_calculator'

class DateCalculatorFactoryTests < Test::Unit::TestCase
  def setup
    @subject = Holidays::Factory::DateCalculator
  end

  def test_day_of_month_calculator
    assert @subject.day_of_month_calculator.is_a?(Holidays::DateCalculator::DayOfMonth)
  end

  def test_weekend_modifier
    assert @subject.weekend_modifier.is_a?(Holidays::DateCalculator::WeekendModifier)
  end

  def test_easter_calculator_gregorian
    @subject = @subject::Easter::Gregorian
    assert @subject.easter_calculator.is_a?(Holidays::DateCalculator::Easter::Gregorian)
  end

  def test_easter_calculator_julian
    @subject = @subject::Easter::Julian
    assert @subject.easter_calculator.is_a?(Holidays::DateCalculator::Easter::Julian)
  end

  def test_lunar_date
    assert @subject.lunar_date.is_a?(Holidays::DateCalculator::LunarDate)
    assert @subject.lunar_date.respond_to?('to_solar')
  end
end

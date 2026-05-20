require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

require 'holidays/school_terms'

class SchoolTermsTests < Test::Unit::TestCase
  def test_mid_term_date_is_not_school_holiday
    assert_equal false, Holidays::SchoolTerms.school_holiday?(Date.civil(2025, 2, 15), "NSW_Eastern")
  end

  def test_term_break_date_is_school_holiday
    assert_equal true, Holidays::SchoolTerms.school_holiday?(Date.civil(2025, 4, 15), "NSW_Eastern")
  end

  def test_cross_state_independence
    date = Date.civil(2025, 4, 15)
    assert_equal true, Holidays::SchoolTerms.school_holiday?(date, "NSW_Eastern")
    assert_equal false, Holidays::SchoolTerms.school_holiday?(date, "NT")
  end

  def test_accepts_gem_style_region_string
    date = Date.civil(2025, 4, 15)
    assert_equal Holidays::SchoolTerms.school_holiday?(date, "NSW_Eastern"),
                 Holidays::SchoolTerms.school_holiday?(date, "au_nsw")
  end

  def test_array_input_matches_if_any_calendar_matches
    date = Date.civil(2025, 4, 15)
    assert_equal true, Holidays::SchoolTerms.school_holiday?(date, ["QLD", "NSW_Eastern"])
    assert_equal false, Holidays::SchoolTerms.school_holiday?(Date.civil(2025, 2, 15), ["NSW_Eastern", "VIC"])
  end

  def test_out_of_bounds_date_returns_false
    assert_equal false, Holidays::SchoolTerms.school_holiday?(Date.civil(2050, 1, 1), "NSW_Eastern")
    assert_equal false, Holidays::SchoolTerms.school_holiday?(Date.civil(1990, 6, 1), "VIC")
  end

  def test_data_loads_for_all_nine_calendars
    expected = %w[ACT NSW_Eastern NSW_Western NT QLD SA TAS VIC WA].sort
    assert_equal expected, Holidays::SchoolTerms.calendars_available.sort
  end

  def test_works_without_explicit_load_call
    assert_nothing_raised do
      Holidays::SchoolTerms.school_holiday?(Date.civil(2025, 7, 10), "VIC")
    end
  end

  def test_symbol_region_accepted
    assert_equal true, Holidays::SchoolTerms.school_holiday?(Date.civil(2025, 4, 15), :NSW_Eastern)
  end
end

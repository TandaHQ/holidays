require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# When :observed moves a holiday, the result carries the original date as
# :observed_from so callers can see both the actual and the observed date.
class ObservedFromTests < Test::Unit::TestCase
  def teardown
    Holidays::Factory::Definition.cache_repository.reset!
  end

  def find(holidays, name)
    matches = holidays.select { |h| h[:name] == name }
    assert_equal 1, matches.length, "expected exactly one #{name}, got #{matches.inspect}"
    matches.first
  end

  def test_observed_from_is_set_when_observed_moves_the_holiday
    holidays = Holidays.between(Date.civil(2027, 1, 1), Date.civil(2027, 12, 31), :nz, :observed)

    # Sat 2 Jan 2027 -> Mon 4 Jan 2027
    day_after = find(holidays, "Day after New Year's Day")
    assert_equal Date.civil(2027, 1, 4), day_after[:date]
    assert_equal Date.civil(2027, 1, 2), day_after[:observed_from]

    # Sat 25 Dec 2027 -> Mon 27 Dec 2027
    christmas = find(holidays, "Christmas Day")
    assert_equal Date.civil(2027, 12, 27), christmas[:date]
    assert_equal Date.civil(2027, 12, 25), christmas[:observed_from]
    assert_includes christmas[:regions], :nz

    # Sun 26 Dec 2027 -> Tue 28 Dec 2027
    boxing = find(holidays, "Boxing Day")
    assert_equal Date.civil(2027, 12, 28), boxing[:date]
    assert_equal Date.civil(2027, 12, 26), boxing[:observed_from]
  end

  def test_observed_from_is_absent_when_the_holiday_did_not_move
    holidays = Holidays.between(Date.civil(2027, 1, 1), Date.civil(2027, 12, 31), :nz, :observed)

    # Fri 1 Jan 2027
    new_year = find(holidays, "New Year's Day")
    assert_equal Date.civil(2027, 1, 1), new_year[:date]
    assert_equal [:date, :name, :regions], new_year.keys

    # Holidays without an observed rule never get the key.
    assert_false find(holidays, "Labour Day").key?(:observed_from)
  end

  def test_observed_from_is_absent_without_the_observed_option
    holidays = Holidays.between(Date.civil(2027, 1, 1), Date.civil(2027, 12, 31), :nz)

    assert_equal Date.civil(2027, 12, 25), find(holidays, "Christmas Day")[:date]
    holidays.each { |h| assert_false h.key?(:observed_from), h.inspect }
  end

  def test_observed_from_is_returned_by_on
    christmas = find(Holidays.on(Date.civil(2027, 12, 27), :nz, :observed), "Christmas Day")
    assert_equal Date.civil(2027, 12, 25), christmas[:observed_from]
  end
end

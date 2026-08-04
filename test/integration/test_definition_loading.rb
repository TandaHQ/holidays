require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# Some definition files contribute holidays to regions they do not own: ca.rb and
# mx.rb both list :us, and mx.rb lists :ca. Loading one of those first must not
# convince the gem that it already has the other country's definitions.
#
# Each test starts from empty definition repositories so that the order regions
# are asked for is the only thing under test.
class DefinitionLoadingTests < Test::Unit::TestCase
  def setup
    @original_regions_repo = Holidays::Factory::Definition.instance_variable_get(:@regions_repo)
    @original_holidays_repo = Holidays::Factory::Definition.instance_variable_get(:@holidays_repo)

    forget_loaded_definitions!
  end

  def teardown
    Holidays::Factory::Definition.instance_variable_set(:@regions_repo, @original_regions_repo)
    Holidays::Factory::Definition.instance_variable_set(:@holidays_repo, @original_holidays_repo)
    Holidays::Factory::Definition.cache_repository.reset!
  end

  def test_country_holidays_are_found_after_a_country_that_contributes_to_it
    Holidays.on(Date.civil(2021, 9, 16), :mx)

    assert_equal ['Canada Day'], holiday_names(Date.civil(2021, 7, 1), :ca)
  end

  def test_sub_region_holidays_are_found_after_a_country_that_contributes_to_its_parent
    Holidays.on(Date.civil(2021, 9, 16), :mx)

    assert_equal ['Family Day'], holiday_names(Date.civil(2021, 2, 15), :ca_on)
  end

  def test_state_holidays_are_found_after_a_country_that_contributes_to_its_parent
    Holidays.on(Date.civil(2021, 2, 15), :ca_on)

    assert_equal ['Pioneer Day'], holiday_names(Date.civil(2021, 7, 23), :us_ut)
  end

  # :us is the one region whose parent lookup names a different country, because
  # ca.rb declares it. Asking for :us therefore loads ca.rb and never us.rb, and
  # only the :north_america special case in ParseOptions makes up the difference.
  # These pin that behaviour so the special case cannot be dropped unnoticed.
  def test_country_holidays_are_found_when_the_parent_lookup_names_another_country
    assert_equal ['Independence Day'], holiday_names(Date.civil(2022, 7, 4), :us)
  end

  def test_country_holidays_are_found_when_another_country_was_asked_for_first
    Holidays.on(Date.civil(2021, 2, 15), :ca_on)

    assert_equal ['Independence Day'], holiday_names(Date.civil(2022, 7, 4), :us)
  end

  def test_country_holidays_are_the_same_however_many_other_countries_were_asked_for_first
    expected = holiday_names(Date.civil(2021, 7, 1), :ca)

    forget_loaded_definitions!
    Holidays.on(Date.civil(2021, 9, 16), :mx)
    Holidays.on(Date.civil(2021, 7, 23), :us_ut)

    assert_equal expected, holiday_names(Date.civil(2021, 7, 1), :ca)
  end

  private

  def forget_loaded_definitions!
    Holidays::Factory::Definition.instance_variable_set(
      :@regions_repo,
      Holidays::Definition::Repository::Regions.new(Holidays::REGIONS, Holidays::PARENT_REGION_LOOKUP),
    )
    Holidays::Factory::Definition.instance_variable_set(
      :@holidays_repo,
      Holidays::Definition::Repository::HolidaysByMonth.new,
    )
    Holidays::Factory::Definition.cache_repository.reset!
  end

  def holiday_names(date, region)
    Holidays.on(date, region, :observed).map { |holiday| holiday[:name] }.sort
  end
end

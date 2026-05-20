# frozen_string_literal: true

require "yaml"
require "date"

module Holidays
  # Looks up whether a given Date falls inside an AU school holiday window.
  #
  # AU education departments publish in-session term ranges. A date is a
  # school holiday if it sits inside the calendar's overall bounds but
  # outside every in-session range for that calendar.
  #
  # Public API:
  #   Holidays::SchoolTerms.school_holiday?(date, region)
  #     region accepts:
  #       - state-style symbols/strings: "NSW_Eastern", "NSW_Western", "VIC", "QLD", "WA", "SA", "TAS", "ACT", "NT"
  #       - holidays-gem-style region strings: "au_nsw", "au_vic", ..., "au_nt"
  #       - an array of either of the above (any match returns true)
  module SchoolTerms
    DATA_PATH = File.expand_path("../../data/au_school_terms.yaml", __FILE__)

    REGION_TO_CALENDAR = {
      "au_nsw" => "NSW_Eastern",
      "au_nsw_eastern" => "NSW_Eastern",
      "au_nsw_western" => "NSW_Western",
      "au_vic" => "VIC",
      "au_qld" => "QLD",
      "au_wa" => "WA",
      "au_sa" => "SA",
      "au_tas" => "TAS",
      "au_act" => "ACT",
      "au_nt" => "NT"
    }.freeze

    class << self
      def school_holiday?(date, region)
        regions = Array(region).flatten.compact.map(&:to_s)
        calendars = regions.map { |r| REGION_TO_CALENDAR[r] || r }.uniq
        calendars.any? { |cal| calendar_holiday?(cal, date) }
      end

      def calendars_available
        terms.keys
      end

      def in_session_ranges(calendar)
        Array(terms[calendar.to_s])
      end

      private

      def calendar_holiday?(calendar, date)
        ranges = terms[calendar.to_s]
        return false unless ranges && !ranges.empty?
        return false if date < ranges.first.begin || date > ranges.last.end
        ranges.none? { |r| r.cover?(date) }
      end

      def terms
        @terms ||= load_terms
      end

      def load_terms
        raw = YAML.safe_load_file(DATA_PATH, permitted_classes: [Date, Symbol]) || {}
        raw.each_with_object({}) do |(name, entries), acc|
          acc[name] = Array(entries).map do |entry|
            from, to = entry.is_a?(Array) ? entry : [entry["from"], entry["to"]]
            Date.parse(from.to_s)..Date.parse(to.to_s)
          end.sort_by(&:begin)
        end
      end
    end
  end
end

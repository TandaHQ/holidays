module Holidays
  module Definition
    module Repository
      class Regions
        def initialize(all_generated_regions, parent_region_lookup)
          @loaded_regions = []
          @loaded_definitions = []
          @all_generated_regions = all_generated_regions
          @parent_region_lookup = parent_region_lookup
        end

        def all_generated
          @all_generated_regions
        end

        def parent_region_lookup(r)
          @parent_region_lookup[r]
        end

        def all_loaded
          @loaded_regions
        end

        def loaded?(region)
          raise ArgumentError unless region.is_a?(Symbol)
          @loaded_regions.include?(region)
        end

        def add(regions)
          regions = [regions] unless regions.is_a?(Array)

          regions.each do |region|
            raise ArgumentError unless region.is_a?(Symbol)
          end

          @loaded_regions = @loaded_regions | regions
          @loaded_regions.uniq!
        end

        def all_definitions_loaded
          @loaded_definitions
        end

        # A definition file contributes holidays for regions it does not own, so
        # `loaded?` cannot tell us whether a region's own definitions are present.
        # Only the file named after the region can answer that.
        def definitions_loaded?(region)
          raise ArgumentError unless region.is_a?(Symbol)
          @loaded_definitions.include?(region)
        end

        def add_definitions(region)
          raise ArgumentError unless region.is_a?(Symbol)
          @loaded_definitions = @loaded_definitions | [region]
        end

        def search(prefix)
          raise ArgumentError unless prefix.is_a?(Symbol)
          @loaded_regions.select { |region| region.to_s =~ Regexp.new("^#{prefix}") }
        end
      end
    end
  end
end

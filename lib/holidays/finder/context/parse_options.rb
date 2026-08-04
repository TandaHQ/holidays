module Holidays
  module Finder
    module Context
      class ParseOptions
        def initialize(regions_repo, region_validator, definition_loader)
          @regions_repo = regions_repo
          @region_validator = region_validator
          @definition_loader = definition_loader
        end

        # Returns [(arr)regions, (bool)observed, (bool)informal]
        def call(*options)
          options.flatten!

          #TODO This is garbage. These two deletes MUST come before the
          # parse_regions call, otherwise it thinks that :observed and :informal
          # are regions to parse. We should be splitting these things out.
          observed = options.delete(:observed) ? true : false
          informal = options.delete(:informal) ? true : false
          regions = parse_regions!(options)

          return regions, observed, informal
        end

        private

        # Check regions against list of supported regions and return an array of
        # symbols.
        #
        # If a wildcard region is found (e.g. :ca_) it is expanded into all
        # of its available sub regions.
        def parse_regions!(regions)
          regions = [regions] unless regions.kind_of?(Array)

          if regions.empty?
            regions = [:any]
          else
            regions = regions.collect { |r| r.to_sym }
          end

          validate!(regions)

          loaded_regions = []

          #FIXME I don't know what this means or why we have it! I'm reluctant to remove it
          # at this time without understanding more. -PP 2017/3/29
          #
          # special case for north_america/US cross-linking
          load_region!(:north_america) if regions.include?(:us)

          if regions.include?(:any)
            @regions_repo.all_generated.each do |r|
              load_definitions_for!(r)
              loaded_regions << r
            end
          else
            regions.each do |r|
              if is_wildcard?(r)
                loaded_regions << load_wildcard_parent!(r)
              else
                load_definitions_for!(r)
                loaded_regions << r
              end
            end
          end

          loaded_regions.flatten.compact.uniq
        end

        def validate!(regions)
          regions.each do |r|
            raise InvalidRegion unless @region_validator.valid?(r)
          end
        end

        def is_wildcard?(r)
          r.to_s =~ /_$/
        end

        # The file that owns a region is the only one guaranteed to hold all of
        # its definitions. Other files can contribute a handful of holidays to it
        # (ca.rb and mx.rb both list :us, for example), which marks the region as
        # loaded without ever opening the file that actually defines it.
        def load_definitions_for!(region)
          definition = @regions_repo.parent_region_lookup(region)

          if definition.nil?
            load_region!(region) unless @regions_repo.loaded?(region)
          else
            load_region!(definition) unless @regions_repo.definitions_loaded?(definition)
          end
        end

        def load_wildcard_parent!(wildcard_region)
          prefix = wildcard_region.to_s.split('_').first.to_sym
          load_region!(prefix)
        end

        def load_region!(r)
          @definition_loader.call(r)
        rescue NameError, LoadError => e
          raise UnknownRegionError.new(e), "Could not load region: #{r}"
        end
      end
    end
  end
end

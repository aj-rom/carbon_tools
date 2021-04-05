# frozen_string_literal: true

module CarbonTools
  # Class used for handling the conversion of bytes from each others sizes, and into CO2
  # This handles the operations for conversion of gigabytes to megabytes to bytes and then into CO2
  class Converter
    AVERAGE_KILO_WATT_HOUR_PER_GB = 1.805
    AVERAGE_CARBON_FACTOR_GRID = 457.0
    MEGABYTE_SIZE = 104_857
    MEGABYTES_IN_GIGABYTE = 1_024
    # add kilobytes and maybe even bit

    def megabytes_to_bytes(megabytes)
      megabytes * MEGABYTE_SIZE
    end

    def gigabytes_to_bytes(gigabytes)
      megabytes_to_bytes(gigabytes * MEGABYTES_IN_GIGABYTE)
    end

    def bytes_to_megabytes(bytes)
      bytes / MEGABYTE_SIZE
    end

    def bytes_to_gigabytes(bytes)
      bytes_to_megabytes(bytes) / MEGABYTES_IN_GIGABYTE
    end

    def byte_to_co2(bytes = 0.0)
      # some byte to co2 stuff
    end

    def convert_bytes_to_co2(bytes = 0.0); end

    def convert_co2_to_bytes(bytes = 0.0); end

    # @param country, the country of origin using a country code 'USA, RUS, etc
    # @param bytes, the amount of bytes being sent
    def convert_bytes(country: nil, bytes: 0.0, year: ''); end

  end
end

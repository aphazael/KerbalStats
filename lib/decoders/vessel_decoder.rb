module Decoders
  module VesselDecoder
    VESSEL_PATH = Const::UNIVERSE_PATH.join("Vessels")


    def self.decode_vessel(vessel_id)
      vessel_filename = add_dashes(vessel_id)
      #byebug

      vessel_file = File.open(VESSEL_PATH.join("#{vessel_filename}.txt"))
      return extract(vessel_file)
    end

    def self.extract(file)
      thing = {}

      file.each do |line|
        if "=".in?(line)
          key, value = line.split("=")
          thing[key.strip] = value.strip
        else
          return thing
        end
      end
    end

    def self.add_dashes(string)
      return string if string.length > 32
      return "#{string[0..7]}-#{string[8..11]}-#{string[12..15]}-#{string[16..19]}-#{string[20..31]}"
    end

  end
end

# 00357c9b972f4b30bd05966730c174bf
# 00357c9b-972f-4b30-bd05-966730c174bf
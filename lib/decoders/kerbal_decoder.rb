module Decoders
  module KerbalDecoder
    KERBAL_PATH = Const::UNIVERSE_PATH.join("Kerbals")


    def self.decode_kerbal(kerbal_name)
      kerb_file = File.open(KERBAL_PATH.join("#{kerbal_name}.txt"))
      return extract(kerb_file)
    end

    def self.extract(file)
      kerbal = {}

      file.each do |line|
        if "=".in?(line)
          key, value = line.split("=")
          kerbal[key.strip] = value.strip
        else
          return kerbal
        end
      end
    end

  end
end
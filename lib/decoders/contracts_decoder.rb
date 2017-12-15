module Decoders
  module ContractsDecoder

    def self.load_contracts(player_name)
      player_path = Const::UNIVERSE_PATH.join("Scenarios", player_name)

      contracts_file = File.open(player_path.join("ContractSystem.txt"))

      return parse_contracts(contracts_file)
    end

    def self.parse_contracts(file)
      # First, clear off all the stuff at the front of the file
      while not "CONTRACTS".in?(file.readline()); end
      byebug
    end

    def self.extract_field(file, field)
      line = file.readline()
      while line
        key, val = line.split("=")
        return val.strip if key.strip == field
        line = file.readline()
      end
    end

  end
end

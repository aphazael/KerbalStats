module Decoders
  module StateDecoder

    REP_FILE = "Reputation.txt"
    FUND_FILE = "Funding.txt"
    SCI_FILE = "ResearchAndDevelopment.txt"


    def self.load_state(player_name)
      player_path = Const::UNIVERSE_PATH.join("Scenarios", player_name)

      rep_file = File.open(player_path.join(REP_FILE))
      fund_file = File.open(player_path.join(FUND_FILE))
      sci_file = File.open(player_path.join(SCI_FILE))

      return {
        science: extract_field(sci_file, "sci"),
        reputation: extract_field(rep_file, "rep"),
        funds: extract_field(fund_file, "funds")
      }
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

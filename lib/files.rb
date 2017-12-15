require "const"

module Files
  def self.all_players
    paths = Dir.glob(Const::UNIVERSE_PATH.join("Scenarios", "*"))
    return paths.map{|pp| Pathname.new(pp).basename.to_s}.reject{|nn| nn == "Initial"}
  end

end

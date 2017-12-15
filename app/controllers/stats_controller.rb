require "files"
require "decoders/state_decoder"

class StatsController < ApplicationController

def all
  @player_names = Files::all_players
end

end

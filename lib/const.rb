module Const
  UNIVERSE_PATH = Pathname(Rails.env == "production" \
    ? ENV["PATH_TO_UNIVERSE"] \
    : "#{Rails.root}/test-universe" \
  )
end
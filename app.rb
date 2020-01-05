# frozen_string_literal: true

require "sinatra"

get "/" do
  @countdown = (1_580_868_000 - Time.now.to_i).to_s.split("").join(" ")
  erb :twitch
end

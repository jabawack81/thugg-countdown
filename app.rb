# frozen_string_literal: true

require "sinatra"

get "/" do
  now = Time.now.to_i
  @countdown = (next_episode(now) - now).to_s.split("").join(" ")
  erb :twitch
end

private

def next_episode(now)
  times = [
    1_580_868_000, # Feb 4
    1_582_077_600, # Feb 18
    1_583_287_200, # Mar 3
    1_584_496_800, # Mar 17
    1_586_311_200, # Apr 7
    1_587_517_200, # Apr 21
    1_588_726_800, # May 5
    1_589_936_400, # May 19
    1_591_146_000, # Jun 2
    1_592_355_600, # Jun 16
    1_594_170_000, # Jul 7
    1_595_379_600  # Jul 21
  ]

  times.find { |i| i > now }
end

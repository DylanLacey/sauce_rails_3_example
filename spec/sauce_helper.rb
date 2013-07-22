# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"
Sauce.config do |config|
  config[:browsers] = [
    ["Windows 7", "Firefox", 21],
    ["Linux", "Chrome", ""],
    ["OS X 10.6", "Firefox", "6"],
    ["Windows 7", "internet explorer", "9"]
  ]

  config[:start_local_application] = false
end

ports = [2001, 2020, 2109, 2222, 2310, 3000, 3001, 3030, 3210, 3333, 4000, 4001, 4040, 4321, 4502, 4503, 5000, 5001, 5050, 5555, 5432, 6000, 6001, 6060, 6666, 6543, 7000, 7070, 7774]

if(ENV["TEST_ENV_NUMBER"])
  index = ENV["TEST_ENV_NUMBER"].to_i
  Capybara.server_port = (ports[index])
end

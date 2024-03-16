ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'rack/test'
require 'nokogiri'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# Retruns a Document object for the HTML body of the response.
def doc(response)
  Nokogiri::HTML(response.body)
end

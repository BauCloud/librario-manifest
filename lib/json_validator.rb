require 'json'
require 'pathname'

class JsonValidator
  attr_reader :file, :message
  
  class << self
    def validate(file)
      new(file).valid?
    end
  end
  
  def initialize(file)
    @file = Pathname.new(file)
  end
  
  def valid?
    JSON.parse(file.read)
    @message = nil
    true
  rescue JSON::ParserError => e
    @message = e.message
    puts e.inspect
    false
  end
end

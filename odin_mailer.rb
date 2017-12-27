require './asset.rb'
require './content_parser.rb'
require './integrations.rb'
require 'byebug'

class OdinMailer
  class << self
    def send(key, user, data)
      asset = Asset.find_by(key: key)
      body = parse_body(asset.content, data[:parser])
      options = data.merge!(body: body)

      Integrations.new(asset.integration).send(user, options)
    end

    def parse_body(content, data)
      ContentParser.new(content, data).call
    end
  end
end

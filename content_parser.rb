require 'mustache'

class ContentParser
  def initialize(content, data)
    @content = content
    @data = data
  end

  def call
    Mustache.render(@content, @data)
  end
end

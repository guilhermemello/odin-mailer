require './integrations/send_grid.rb'
require './integrations/rd_station.rb'

class Integrations
  def initialize(integration)
    @integration = integration
  end

  def send(user, options)
    case @integration.to_sym
    when :sendgrid
      SendGrid.new(user, options).deliver
    when :rdstation
      RdStation.new(user, options).deliver
    end
  end
end

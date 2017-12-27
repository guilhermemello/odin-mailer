class RdStation
  def initialize(user, options={})
    @user = user
    @options = options
  end

  def deliver
    puts "rdstation options #{@options}"
  end
end

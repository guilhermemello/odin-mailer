class SendGrid
  def initialize(user, options={})
    @user = user
    @options = options
  end

  def deliver
    puts "sendgrid is sending an email to #{@user[:email]} with these options #{@options}"
  end
end

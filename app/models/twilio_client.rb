class TwilioClient
  def self.send_text_message(order)
    runner = Runner.all.sample
    !runner ? (return 'No runner\'s avaliable' ) : nil
    number_to_send_to = runner.phone

    if Rails.env.test? || Rails.env.development?
      auth_token="24ebb9f3adf36915a46f7ff26e7d1fa9"
    else
      auth_token=ENV["AUTH_TOKEN"]
    end

    if Rails.env.test? || Rails.env.development?
      account_sid = "AC9d4c46c95f181d6e03c1a89fca868bc3"
    else
      account_sid = ENV["ACCOUNT_SID"]
    end

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token
      @twilio_client.account.sms.messages.create(
      :from => "+1#{ENV['TWILIO_NUM']}",
      :to => "+1#{number_to_send_to}",
      :body => order
      )
      puts "Sent message to #{runner.name}"
  end
end

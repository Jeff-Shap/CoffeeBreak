class TwilioClient
  def self.send_text_message(order)
    runner = Runner.all.sample
    !runner ? (return 'No runner\'s avaliable' ) : nil
    number_to_send_to = runner.phone

    if Rails.env.test? || Rails.env.development?
      auth_token="83f89618e1c835b7e6602c1b260507c4"
    else
      auth_token=ENV["AUTH_TOKEN"]
    end

    if Rails.env.test? || Rails.env.development?
      account_sid = "AC9d4c46c95f181d6e03c1a89fca868bc3"
    else
      account_sid = ENV["ACCOUNT_SID"]
    end

    if Rails.env.test? || Rails.env.development?
      twilio_num = "3054400524"
    else
      twilio_num = ENV['TWILIO_NUM']
    end


    @twilio_client = Twilio::REST::Client.new account_sid, auth_token
      @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_num}",
      :to => "+1#{number_to_send_to}",
      :body => order
      )
      puts "Sent message to #{runner.name}"
  end
end

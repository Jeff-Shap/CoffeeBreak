class TwilioClient
    def self.send_text_message
    runner = Runner.all.sample
    !runner ? (return 'No runner\'s avaliable' ) : nil
    number_to_send_to = runner.phone

    account_sid = "ACbf9d315e805714fbda6f3bda0a472f11"
    auth_token = "55edd5e9b140e907a7b7e7b1ec4a977a"
    twilio_phone_number = "3059281286"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token

      @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{number_to_send_to}",
      :body => "Test message from Coffee break!"
      )
      puts "Sent message to #{runner.name}"
  end
end

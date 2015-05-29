class TwilioClient
  def self.send_text_message(order)
    runner = Runner.all.sample
    !runner ? (return 'No runner\'s avaliable' ) : nil
    number_to_send_to = runner.phone

    account_sid = "ACbf9d315e805714fbda6f3bda0a472f11"
    auth_token = "d0c4d21cfc4831bb5d9dae9251c6d8ed"
    twilio_phone_number = "3059281286"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token
      @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{number_to_send_to}",
      :body => order
      )
      puts "Sent message to #{runner.name}"
  end
end

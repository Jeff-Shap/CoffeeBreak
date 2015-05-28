class TwilioClient
    def self.send_text_message(order)
    runner = Runner.all.sample
    !runner ? (return 'No runner\'s avaliable' ) : nil
    number_to_send_to = runner.phone

    account_sid = "AC138785f4777b27ba4cbb7b145d50acfe"
    auth_token = "d8d3b4b07997a4c212e1edae21392545"
    twilio_phone_number = "9419607862"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token

      @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{number_to_send_to}",
      :body => order
      )
      puts "Sent message to #{runner.name}"
  end

end

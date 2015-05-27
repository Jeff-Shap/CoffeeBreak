  # require 'rubygems'
  # require 'twilio-ruby'

class SendTextController < ApplicationController

  def send_text_message(number_to_send_to) #, orderdesciption)
    #number_to_send_to = "9544714987"#params[:number_to_send_to]
    #orderdesciption
    # => number_to_send_to = @runners.values.sample

    account_sid = "ACbf9d315e805714fbda6f3bda0a472f11"
    auth_token = "55edd5e9b140e907a7b7e7b1ec4a977a"
    twilio_phone_number = "3059281286"

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token

      @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{number_to_send_to}",
      :body => "Test message from Coffee break!"
      )
      puts "Sent message to #{@runners.keys.sample.to_str}!"
  end

end



class SendTextController < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = "PNd2d519619a576f086e664ef8649d0252"
    twilio_token = "CoffeeBreak"
    twilio_phone_number = "3059281286"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "Insert sample message to be sent here!"
      )
  end
end

class ReceiveTextController < ApplicationController
  # require 'rubygems'
  # require 'twilio-ruby'

  def index
    #need to add routes localhost::3000/sms to routes

    account_sid = "ACbf9d315e805714fbda6f3bda0a472f11"
    auth_token = "55edd5e9b140e907a7b7e7b1ec4a977a"

    message_body = params["Body"]
    from_number = params["From"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    @order_message =  @client.account.sms.messages.list({}).each do |sms|
                        puts sms.to
                      end

    @sms = @client.account.sms.messages.get("SM1d2c461018a3245defd8589527bd8c98")

  end

        #    do  sender = params[:From]
        #   friends = {
        #     "+14153334444" => "Curious George",
        #     "+14158157775" => "Boots",
        #     "+14155551234" => "Virgil"
        #   }
        #   name = friends[sender] || "Mobile Monkey"
        #   twiml = Twilio::TwiML::Response.new do |r|
        #     r.Message "Hello, #{name}. Thanks for the message."
        #   end
        #   twiml.text
        # end
end

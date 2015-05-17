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

    @client.account.sms.messages.list.each do |sms|
      puts sms
    end

  end
end

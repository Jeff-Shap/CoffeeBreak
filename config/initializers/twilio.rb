if Rails.env.test? || Rails.env.development?
  #auth_token = "83f89618e1c835b7e6602c1b260507c4"
  auth_token = "8c68a13a80c6f7036c70ce5fedb4f27c"
else
  auth_token = ENV["AUTH_TOKEN"]
end

if Rails.env.test? || Rails.env.development?
  #account_sid = "AC9d4c46c95f181d6e03c1a89fca868bc3"
  account_sid = "AC3a0b68aae943d7866406c90000665ac3"
else
  account_sid = ENV["ACCOUNT_SID"]
end

Twilio.configure do |config|
  config.account_sid = "AC3a0b68aae943d7866406c90000665ac3"
  config.auth_token = "8c68a13a80c6f7036c70ce5fedb4f27c"
end

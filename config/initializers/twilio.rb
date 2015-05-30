Rails.configuration {
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
}

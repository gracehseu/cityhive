require 'twilio-ruby'

account_sid = 'ACcd207c4be71151a3f50ef05c79e865d5'
auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyy'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+15551234567' # Your Twilio number
to = '+15555555555' # The mobile number the text will be sent to

client.messages.create(
  from: from,
  to: to,
  body: "Hey friend!"
)
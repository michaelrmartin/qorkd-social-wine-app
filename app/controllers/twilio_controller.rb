class TwilioController < ApplicationController
  require 'twilio-ruby'
  
  def create
    
    account_sid = Rails.application.credentials.twilio[:account_sid]
    auth_token = Rails.application.credentials.twilio[:auth_token] 

    @client = Twilio::REST::Client.new(account_sid, auth_token)
    message = @client.messages.create(
      from: '+18888419897',
      to: params["phone"],
      body: params["textBody"]
    )

  end

end

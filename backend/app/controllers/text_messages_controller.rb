require 'twilio-ruby'

class TextMessagesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @textMessages = TextMessage.all 
        render json: @textMessages
    end 

    def show
        @textMessages = TextMessage.find(params[:cookie])
        render json: @textMessages
    end 

    def create
        @textMessage = TextMessage.create(
            cookie: params[:cookie],
            content: params[:content],
            phoneNumber: params[:phoneNumber]
        )

        
        account_sid = 'ACc48f0d5a56d1d511c87803b3ef1ab61b'
        auth_token = '70090fe95eb839b6fff1233e575985b1'
        client = Twilio::REST::Client.new(account_sid, auth_token)

        from = '+18336011393' # Your Twilio number
        to = '2146935907' # Your mobile phone number
        client.messages.create(
            from: from,
            to: params[:phoneNumber],
            body: params[:content]
        )
        render json: @textMessage
    end 

    def update
        @textMessage = TextMessage.find(params[:cookie])
        @textMessage.update(
            cookie: params[:cookie],
            content: params[:content],
            phoneNumber: params[:phoneNumber]
        )
        render json: @textMessage
    end 

    def destroy
        @textMessages = TextMessage.all 
        @textMessage = TextMessage.find(params[:cookie])
        @textMessage.destroy
        render json: @textMessages
    end 
end

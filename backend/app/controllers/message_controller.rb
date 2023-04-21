class MessageController < ApplicationController
    skip_before_action :verify_authenticity_token

    def show
        @messages = Text_message.find(params[:cookie])
        render json: @messages
    end 

    def create
        Text_message.create(
            cookie: params[:cookie],
            message: params[:content],
            number: params[:phoneNumber]
        )
    end 
    
end
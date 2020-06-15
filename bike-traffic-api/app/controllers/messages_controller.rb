class MessagesController < ApplicationController
    # Adds index to render json localhost:3000/messages
    def index
        messages = Message.all
        render json: messages.to_json(:include => {
            :bike_trail => {:only => [:name, :distance, :counter_location]}
        }, :except => [:created_at, :updated_at])
    end
end

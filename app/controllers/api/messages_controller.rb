class Api::MessagesController < ApplicationController
  def random_greeting
    message = Message.find(rand(1..Message.count))
    render json: JSON.pretty_generate({ content: message.content })
  end
end

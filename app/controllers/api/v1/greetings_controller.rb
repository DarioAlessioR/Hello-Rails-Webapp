class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    render json: @greetings
  end

  def random_greeting
    @greeting = Greeting.all.sample.text
    render json: @greeting 
  end
end
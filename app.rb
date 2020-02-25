require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number.to_i.times.collect {@phrase}.join(' ')
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(' ')}."
  end
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    case @operation
    when "add"
      "#{@number1+@number2}"
    when "subtract"
      "#{@number1-@number2}"
    when "multiply"
      "#{@number1*@number2}"
    when "divide"
      "#{@number1/@number2}"
    end
  end
end

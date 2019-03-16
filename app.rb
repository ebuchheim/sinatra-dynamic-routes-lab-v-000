require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    name = @user_name.reverse!
    "#{name}"
  end

  get "/square/:number" do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    square = square.to_s
    "#{square}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    @number = @number.to_i
    repeated = ""
    @number.times do
      repeated = repeated + @phrase
    end
    "#{repeated}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    word = "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + @word5
    "#{word}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    @num1 = @num1.to_i
    @num2 = @num2.to_i
    if @operation == "divide"
      sign = "/"
    elsif @operation == "multiply"
      sign = "*"
    elsif @operation == "add"
      sign = "+"
    else
      sign = "-"
    end
    answer = @num1.send(sign, @num2)
    "#{answer}"
  end

end
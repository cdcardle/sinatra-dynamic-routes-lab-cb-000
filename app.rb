require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number]
    "#{@phrase}\n" * @num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = []
    params.each do |k, v|
      string << "#{value}"
    end
    string
  end

end
s
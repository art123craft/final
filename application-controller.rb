require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end
 
 
 post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total

   @boy = boyquiz(@total)
   if @boy == "nick"
     erb :nick
   elsif @boy == "zac"
     erb :zac
   elsif @boy == "shawn"
     erb :shawn
    elsif @boy == "chris"
    erb :chris
    elsif @boy == "tom"
    erb :tom
   end
end
post  '/res' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total
   
   
@girl = girlquiz(@total)
   if @girl == "zendaya"
     erb :zendaya
   elsif @girl == "beyonce"
     erb :beyonce
   elsif @girl == "chrissy"
     erb :chrissy
    elsif @girl == "karlie"
    erb :karlie
    elsif @girl == "taylor"
    erb :taylor
   end
end

end


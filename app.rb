require 'sinatra'
require './TodoManager.rb'

get '/todos' do
  # "INDEX"
  TodoManager.index
end

post '/todos' do
  # "CREATE"
  to_add = params[:todo]
  TodoManager.create to_add
end

#:id - Dynamic URL attribute
get '/todos/:id' do
  # "SHOW"
  #puts params #Full hash
  #puts params[:id] #Id only
  id  = params[:id].to_i
  TodoManager.show(id)
end

put '/todos/:id' do
  # "UPDATE"
  id = params[:id].to_i
  to_add = params[:todo]
  TodoManager.update(id, to_add)
end
# "?todo=task&" - Query Parameters, separted by and for multiple params



delete '/todos/:id' do
  # "DESTROY"
  id = params[:id].to_i
  TodoManager.delete(id)
end





# get '/' do
#   "Hello World"
# end

# post '/' do
#   "THIS IS A POST REQUEST"
# end

# get '/apples' do
#   "This is the apples page"
# end
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
  #puts params #Full hash
  #puts params[:id] #Id only
  # "SHOW"
  id  = params[:id].to_f
  TodoManager.show(id)
end

put '/todos/:id' do
  # "UPDATE"
  id = params[:id].to_f
  to_add = params[:todo]
  TodoManager.update(id, to_add)
end

delete '/todos/:id' do
  # "DESTROY"
  id = params[:id].to_f
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
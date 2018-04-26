require "sinatra"
require "sinatra/activerecord"

#Dont forget to require your models
require_relative './models/post_tag'
require_relative './models/post'
require_relative './models/tag'
require_relative './models/user'

set :database, {adapter: 'postgresql', database: 'rumblr'}

configure do
    enable :sessions
    set :session_secret, "secret"
  end

#   First stage, pre-user signup and user log in
get '/' do
   erb :index
end

post '/' do
    redirect '/sign_up'
end

get '/sign_up' do
    erb :sign_up
end

post '/sign_up' do
    redirect '/home'
end

get '/home' do
    erb :home
end

# Stage 2, user account management
get '/new' do
    erb :new
end

post '/new' do
    redirect '/home'
end

get '/edit_profile' do
    erb :edit_profile
end

post '/edit_profile' do
    redirect '/home'
end

get '/edit_post' do
    erb :edit_post
end

post '/edit_post/:id' do
    @this_post = params[:id]
    redirect '/home'
end

post '/search' do
    @this_tag = params[:tag]
    redirect '/search'
end

get '/search' do
    @this_tag = params[:tag]
    erb :search
end

get '/log_out' do
    session.clear
end
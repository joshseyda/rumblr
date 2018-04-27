require "sinatra"
require "sinatra/activerecord"

#Dont forget to require your models
require_relative './models/post_tag'
require_relative './models/post'
require_relative './models/tag'
require_relative './models/user'

set :database, {adapter: 'postgresql', database: 'rumblr'}
    enable :sessions


#   First stage, pre-user signup and user log in
get '/' do
   erb :index, layout: :layout_out
end

post '/' do
    redirect '/sign_up'
end

get '/sign_up' do
    erb :sign_up, layout: :layout_out
end

post '/sign_up' do
    if User.exists?(:username=>params[:username])   
        #Data did not work modal pop up to try again
        redirect '/sign_up'
    else
        @user = User.create(username: params[:username], email: params[:email], password_digest: params[:password_digest], birthday: params[:birthday])
        @user
        session[:id] = @user.id
        redirect '/home'
    end 
end

post '/log_in' do
    @user = User.find_by(email: params[:email], password_digest: params[:password])
    @user
    if @user != nil 
        session[:id] = @user.id
        redirect '/home'
    else   
        #Could not find this user. Redirecting them to the signup page
        redirect '/sign_up'
    end 
end

get '/home' do
    if user_exists?
        @user = User.find(session[:id])
    erb :home
    else
        redirect '/sign_up'
    end
end

# Stage 2, user account management
get '/new' do
    erb :new
end

post '/new' do
    @user = User.find(session[:id])
    Post.create(title: params[:post_name], content: params[:post_text], user_id: @user.id)
    redirect '/home'
end

get '/edit_profile' do
    erb :edit_profile
end

post '/edit_profile' do
    redirect '/home'
end

get '/profile' do
    erb :profile
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

post '/log_out' do
    redirect '/log_out'
end

get '/log_out' do
    session.clear
    redirect '/'
end

private 
def user_exists?
    (session[:id] != nil) ? true : false
end

def current_user
    User.find(session[:id])
end
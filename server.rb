require "sinatra"
require "sinatra/activerecord"
require "carrierwave"
require "carrierwave/orm/activerecord"

#Dont forget to require your models
require_relative './models/post_tag'
require_relative './models/post'
require_relative './models/tag'
require_relative './models/user'
require_relative './models/profile'

set :database, {adapter: 'postgresql', database: 'rumblr'}
    enable :sessions
#Configure Carrierwave
CarrierWave.configure do |config|
    config.root = File.dirname(__FILE__) + "/public"
  end

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
        Profile.create(blog_name: "", sub_name: "", description: "", user_id: session[:id])
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
    @blog = Profile.where(user_id: session[:id])
    erb :edit_profile
end

put '/edit_profile' do
    @profile = Profile.find_by(user_id: session[:id])
    @profile.update(blog_name: params[:blog_name], sub_name: params[:sub_name], description: params[:description], user_id: session[:id])
    redirect '/home'
end

get '/profile' do
    @user = User.find(session[:id]) 
    @blog = Profile.where(user_id: session[:id])
    @post = Post.where(user_id: session[:id]).limit(20)
    # @limit = 20
    erb :profile
end

get '/profile/next/20'do
@user = User.find(session[:id]) 
    @blog = Profile.where(user_id: session[:id])
    @post = Post.where(user_id: session[:id]).limit(40).offset(20)
    erb :profile
end

get '/profile/user/:id' do
    @user = User.find(params[:id])
    @blog = Profile.where(user_id: params[:id])
    @post = Post.where(user_id: params[:id]).limit(20)
    erb :profile
end

get '/edit_post/:id' do
    @this_post = params[:id]
    @this = Post.find(@this_post)
    erb :edit_post
end

put '/edit_post/:id' do
    @this_post = params[:id]
    @this = Post.find(@this_post)
    @this.update(title: params[:title], content: params[:content])
    redirect '/home'
end

delete '/user/post/:id' do
    @this_post = params[:id]
    @post = Post.find(@this_post)
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

get '/delete' do
    erb :delete
end

delete '/delete' do
    @user = User.find(session[:id])
    if params[:password] == @user.password_digest
        User.destroy(session[:id])
        redirect '/'
    else
        redirect '/'
    end
end

private 
def user_exists?
    (session[:id] != nil) ? true : false
end

def current_user
    User.find(session[:id])
end
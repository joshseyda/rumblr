require "sinatra"
require "sinatra/activerecord"
require "carrierwave"
require "carrierwave/orm/activerecord"



require_relative './models/User'
require_relative './models/Post'
require_relative './models/Tag'
require_relative './models/Post_tag'
require_relative './models/Profile'
require_relative './models/Image'
require_relative './models/Images_uploader'

# set :database, {adapter: 'postgresql', database: 'rumblr'}
# ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://azjhksvzfpecqt:99c5b79ec091e32d3edc2bb18907bc4dc5a83a22eaa6c3a2442872c8d2d46895@ec2-107-21-103-146.compute-1.amazonaws.com:5432/d6365toin4rdj4')
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
    if user_exists?
    erb :new
    else
    redirect '/sign_up'
    end
end

post '/new' do
    @user = User.find(session[:id])
    @post = Post.create(title: params[:post_name], content: params[:post_text], user_id: @user.id)
    @post 
    @tags = params[:tags].split(",")
    @tags.each do |tag|
        if Tag.exists?(name: tag)
            @tag = Tag.find_by(name: tag)
            @tag_id = @tag.id
            PostTag.create(post_id: @this_post, tag_id: @tag_id)
        else
            @tag = Tag.create(name: tag)
            @tag_id = @tag.id
            PostTag.create(post_id: @this_post, tag_id: @tag_id)
        end
    end
    #Create new Image Model
    # img = Image.new
    #Save the data from the request
    # img.file    = params[:file] #carrierwave will upload the file automatically
    # img.caption = params[:post_name] #Or recieve it from params
    # img.post_id = @post.id
    # img.user_id = @user.id
    # img.save!
    redirect to('/home')
end

get '/edit_profile' do
    if user_exists?
    @blog = Profile.where(user_id: session[:id])
    erb :edit_profile
    else
    redirect '/sign_up'
    end
end

put '/edit_profile' do
    @profile = Profile.find_by(user_id: session[:id])
    @profile.update(blog_name: params[:blog_name], sub_name: params[:sub_name], description: params[:description], user_id: session[:id])
    redirect '/home'
end

get '/profile' do
    if user_exists?
    @user = User.find(session[:id]) 
    @blog = Profile.where(user_id: session[:id])
    @post = Post.where(user_id: session[:id]).limit(20)
    # @image = Image.where(user_id: @user.id)
    # @limit = 20
    erb :profile
    else
    redirect '/sign_up'
    end
end

get '/profile/next/20'do
    if user_exists?
    @user = User.find(session[:id]) 
    @blog = Profile.where(user_id: session[:id])
    @post = Post.where(user_id: session[:id]).limit(20).offset(20)
    erb :profile
    else
    redirect '/sign_up'
    end
end

get '/profile/user/:id' do
    @user = User.find(params[:id])
    @blog = Profile.where(user_id: params[:id])
    @post = Post.where(user_id: params[:id]).limit(20)
    erb :profile
end

get '/edit_post/:id' do
    if user_exists?
    @this_post = params[:id]
    @this = Post.find(@this_post)
    erb :edit_post
    else
    redirect '/sign_up'
    end
end

put '/edit_post/:id' do
    @this_post = params[:id]
    @this = Post.find(@this_post)
    @this.update(title: params[:title], content: params[:content])
    @tags = params[:tags].split(",")
    @tags.each do |tag|
        if Tag.exists?(name: tag)
            @tag = Tag.find_by(name: tag)
            @tag_id = @tag.id
            PostTag.create(post_id: @this_post, tag_id: @tag_id)
        else
            @tag = Tag.create(name: tag)
            @tag_id = @tag.id
            PostTag.create(post_id: @this_post, tag_id: @tag_id)
        end
    end
    redirect '/home'
end

delete '/user/post/:id' do
    @this_post = params[:id]
    @post = Post.find(@this_post)
end

post '/search' do
    if params[:search].numeric? 
        redirect "/search/#{params[:search]}"
    elsif Tag.exists?(name: params[:search])
        @tag_id =  Tag.find_by(name: params[:search])
        @the_tag_id = @tag_id.id
        redirect "/search/#{@the_tag_id}"
    else
        redirect '/search/error'
    end
end

get '/search/error/:query' do
    @tag = params[:query]
    erb :error
end

get '/search/:tag' do
    @this_tag_id = params[:tag]
    @search_tag = PostTag.where(tag_id: @this_tag_id).to_a
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
    if user_exists?
    erb :delete
    else
    redirect '/sign_up'
    end
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

class String
    def numeric?
      Float(self) != nil rescue false
    end
  end
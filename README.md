# Crft.co
## [Visit The Page](https://crft-rumblr.herokuapp.com/)
## Motivation
###### Crft.co is a hypothetical blogging platform and content management system created for my NYCDA WDF course. We were tasked with building out a simple CRUD application using ActiveRecord to manage a Postgres Database and Ruby with Sinatra on the backend. 
## Build Status
###### Currently I have implemented a simple structure that is _mostly_ mobile responsive, but not entirely. The page supports tags and searching tags, however most work needs to be done to smooth out  some edgecases on tags(specifically returning the proper error page on failure). I would also like to include comments, private messaging, and a public forum/channel. I am working on integrating Bcrypt for secure authentication, WillPaginate to manage pagination, and Carrierwave for accomodating image file upload.   
## Code Style
###### There are some redundancies in the erb files that I would like to sand down, however I feel that much of the rendering is done dynamicaly, although I hope to make this process more lean and DRY. I did not write any JavaScript and kept my client side activity to a minimum. Moving forward I would like to change that. My main focus was on effective pathway control and database manipulation with Ruby, Sinatra, and ActiveRecord. 
## Technology Used
###### To style the page I am using Bootstrap, Google Fonts, and images from Pexels. On the back end I implemented Ruby with Sinatra to run my server, and ActiveRecord to manage my Postgres database. 
## Features
######  This project features user generated profiles, text-based posts, and tags. All of the basic CRUD functions are working, and tag search is in beta. 
## Code Example
###### Below is an example of the Ruby route patterns used to control user flow and content management.
```ruby
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
```
## How To Use
###### Create new users on sign up, add posts, edit posts, edit your profile, tag and search for tags. 
## Credit
###### This project was made possible thanks to [Ruby Gems](http://rubygems.org/) [Bootstrap](https://getbootstrap.com/) [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord) and [Google Fonts](https://fonts.google.com/). All images are liscenced by Creative Commons from [Pexels](https://www.pexels.com/). 
## Licence
##### MIT License

###### Copyright &copy; [2018] [Joshua Seyda]

###### Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

###### The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

###### THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each_with_index do |post, index|
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
  end

  def show
  end

  def new
    #we create an instance variable, @post, then assign it an empty post returned by Post.new.
    @post = Post.new
  end

  def edit
  end
end

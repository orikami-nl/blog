module Blog
  class BlogController < ApplicationController
    def index
      @title = 'title'
      #@keywords = 'metatags'
      #@metadescription = 'metadescription'
      @posts = Post.all
    end
  
  end
end

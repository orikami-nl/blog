module Blog
  class Post < ActiveRecord::Base
    validates :title, :presence => true
    validates :body, :presence => true
    validates :excerpt, :presence => true
  end
end

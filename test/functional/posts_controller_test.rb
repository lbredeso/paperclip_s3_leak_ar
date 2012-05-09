require 'test_helper'
require 'open-uri'

class PostsControllerTest < ActionController::TestCase
  setup do
    20.times do
      post = Post.new :content => "This is a test post"
      post.image = open(
        'https://www.google.com/images/srpr/logo3w.png'
      )
      post.save
    end
  end
  
  test 'memory usage' do
    1000.times do
      get :index
    end
  end
end
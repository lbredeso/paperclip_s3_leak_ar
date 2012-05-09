class Post < ActiveRecord::Base
  has_attached_file :image,
    :default_url => "/:attachment/posts/:style/missing.png",
    :storage => :s3,
    :s3_credentials => Rails.root.join("config/s3.yml")
end

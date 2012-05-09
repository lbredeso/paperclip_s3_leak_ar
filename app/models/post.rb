class Post < ActiveRecord::Base
  has_attached_file :image,
    :default_url => "/:attachment/posts/:style/missing.png",
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }
end

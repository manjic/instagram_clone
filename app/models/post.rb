class Post < ActiveRecord::Base
	validates :description, presence: true

	#validates_attached_file_content_type :picture, content_type:['image/jpg', 'image/jpeg', 'image/png']
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, :storage => :s3,
    bucket: 'S3_BUCKET_NAME',
    s3_credentials: {
    access_key_id: 'AWS_ACCESS_KEY_ID',
    secret_access_key: 'AWS_SECRET_ACCESS_KEY'
    }
end

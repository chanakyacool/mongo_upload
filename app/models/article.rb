class Article 
  include Mongoid::Document
  include Mongoid::Paperclip
  field :name, type: String
  field :content, type: String
 
  has_mongoid_attached_file :photo
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
	
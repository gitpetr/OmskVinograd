class Pic < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "200x200>", :lg => "700x700>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

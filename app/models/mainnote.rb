class Mainnote < ApplicationRecord
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  validates :title, presence: true,length: {minimum:10, maximum:25}
  validates :text, presence: true,length: {minimum:30}
  belongs_to :user
  has_many :notecomments, dependent: :destroy
end

class Mainnote < ApplicationRecord
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :user
  has_many :notecomments, dependent: :destroy
end

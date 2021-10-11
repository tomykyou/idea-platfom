class Mainnote < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :notecomments, dependent: :destroy
end

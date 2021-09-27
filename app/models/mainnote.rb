class Mainnote < ApplicationRecord
  belongs_to :user
  has_many :notecomments, dependent: :destroy
end

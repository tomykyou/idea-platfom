class Notecomment < ApplicationRecord
  ##validates :comment, presence: true
  ##validates :future_point, presence: true
  ##validates :surprisingly_point, presence: true
  ##validates :realization_point, presence: true
  belongs_to :user
  belongs_to :mainnote
end

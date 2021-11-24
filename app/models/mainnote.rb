class Mainnote < ApplicationRecord
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  validate :title_valid
  def title_valid
    if title.blank?
      errors.add(:title, :blank)
    elsif title.length < 10
      errors.add(:title, 'は10文字以上で入力してください')
    elsif title.length > 25
      errors.add(:title, 'は25文字以下で入力してください')
    end
  end
  validate :text_valid
  def text_valid
    if text.blank?
      errors.add(:text, :blank)
    elsif text.length > 500
      errors.add(:text, 'は500文字以内で入力してください')
    end  
  end

  belongs_to :user
  has_many :notecomments, dependent: :destroy
end

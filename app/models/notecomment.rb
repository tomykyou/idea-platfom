class Notecomment < ApplicationRecord
  #コメントはメッセージがなくともできるように設定。ポイントは初期値を０にしているので入力チェックを外す。
  belongs_to :user
  belongs_to :mainnote
  validates :comment,length: {maximum:100}
end

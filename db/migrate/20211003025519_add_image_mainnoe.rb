class AddImageMainnoe < ActiveRecord::Migration[6.1]
  def change
    add_column :mainnotes, :user_icon, :string
  end
end

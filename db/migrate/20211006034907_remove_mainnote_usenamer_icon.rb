class RemoveMainnoteUsenamerIcon < ActiveRecord::Migration[6.1]
  def up
    remove_column :mainnotes, :usenamer, :string
    remove_column :mainnotes, :user_icon, :string
  end
end

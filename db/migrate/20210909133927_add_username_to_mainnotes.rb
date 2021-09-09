class AddUsernameToMainnotes < ActiveRecord::Migration[6.1]
  def change
    add_column :mainnotes, :usenamer, :string
  end
end

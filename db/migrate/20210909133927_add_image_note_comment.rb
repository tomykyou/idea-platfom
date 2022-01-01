class AddImageNoteComment < ActiveRecord::Migration[6.1]
  def change
    add_column :notecomments, :user_id, :integer
  end
end

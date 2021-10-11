class RemoveNotecomment < ActiveRecord::Migration[6.1]
    def up
      remove_column :notecomments, :commenter, :string
      remove_column :notecomments, :user_icon, :string
    end
end

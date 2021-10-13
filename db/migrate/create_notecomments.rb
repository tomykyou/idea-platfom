class CreateNotecomments < ActiveRecord::Migration[6.1]
  def change
    create_table :notecomments do |t|
      t.text :comment
      t.references :mainnote, null: false, foreign_key: true

      t.timestamps
    end
  end
end

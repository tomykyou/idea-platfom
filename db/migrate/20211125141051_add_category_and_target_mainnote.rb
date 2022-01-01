class AddCategoryAndTargetMainnote < ActiveRecord::Migration[6.1]
  def change
    add_column :mainnotes, :target, :string
    add_column :mainnotes, :category, :string
  end
end

class AddimageTitel < ActiveRecord::Migration[6.1]
  def change
    add_column :mainnotes, :title, :string
    add_column :mainnotes, :image1, :string
    add_column :mainnotes, :image2, :string
    add_column :mainnotes, :image3, :string
  end
end

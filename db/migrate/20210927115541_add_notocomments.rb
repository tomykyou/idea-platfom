class Addnotocomments < ActiveRecord::Migration[6.1]
  def change
        ##将来性
        add_column :notecomments, :future_point, :integer
        ##意外性
        add_column :notecomments, :surprisingly_point, :integer
        ##実現性
        add_column :notecomments, :realization_point, :integer
  end
end

class AddThingstoprepare < ActiveRecord::Migration[6.1]
  def change
    add_column :mainnotes, :thingstoprepare, :string
  end
end

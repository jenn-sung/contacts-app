class AddingBioToTable < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :bio, :string
  end
end

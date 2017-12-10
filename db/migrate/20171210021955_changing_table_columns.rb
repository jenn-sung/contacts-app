class ChangingTableColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :Rebecca, :string
    remove_column :contacts, :Smith, :string
  end
end

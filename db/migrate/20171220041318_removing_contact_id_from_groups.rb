class RemovingContactIdFromGroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :groups, :contact_id, :integer
    add_column :groups, :subject, :string
  end
end

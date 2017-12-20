class RemovingSubjectFromGroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :groups, :subject, :string
  end
end

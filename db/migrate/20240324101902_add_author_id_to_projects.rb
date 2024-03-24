class AddAuthorIdToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :author_id, :integer
  end
end

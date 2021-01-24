class AddSizeToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :size, :integer
    add_column :projects, :img1, :string
    add_column :projects, :img2, :string
    add_column :projects, :img3, :string

  end
end

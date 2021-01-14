class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :developer_name
      t.string :location
      t.integer :total_capital_needed
      t.integer :minimum_investment
      t.float :projected_roi

      t.timestamps
    end
  end
end

class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.column :parks_name, :string
      t.column :state_id, :integer
    end
  end
end

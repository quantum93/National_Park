class AddStatesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.column :state_name, :string
    end
  end
end

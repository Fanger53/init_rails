class CreateCostumers < ActiveRecord::Migration[6.0]
  def change
    create_table :costumers do |t|
      t.string :name
      t.string :last
      t.integer :customer_id

      t.timestamps
    end
  end
end

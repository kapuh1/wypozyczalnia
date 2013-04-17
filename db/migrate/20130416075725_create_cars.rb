class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.integer :klass_id

      t.timestamps
    end
  end
end

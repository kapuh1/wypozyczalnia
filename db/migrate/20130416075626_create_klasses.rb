class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :klass_name
      t.integer :car_id

      t.timestamps
    end
  end
end

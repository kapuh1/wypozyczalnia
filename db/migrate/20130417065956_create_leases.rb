class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.date :lease_from
      t.date :lease_to
      t.string :leased_by_name
      t.string :leased_by_last_name
      t.string :leased_by_identity_card_num
      t.integer :car_id

      t.timestamps
    end
  end
end

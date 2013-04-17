class AddLeaseIdToCars < ActiveRecord::Migration
  def change
    add_column :cars, :lease_id, :integer
  end
end

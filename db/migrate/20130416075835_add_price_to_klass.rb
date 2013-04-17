class AddPriceToKlass < ActiveRecord::Migration
  def change
    add_column :klasses, :price, :decimal
  end
end

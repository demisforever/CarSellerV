class AddAmountKmToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :precio, :double
    add_column :vehicles, :amount_km, :integer
    add_column :vehicles, :fuel_type, :string
    add_column :vehicles, :model_year, :interger
  end
end

class Brand < ActiveRecord::Base
  has_many :vehicles #del otro lado tenemos que tener un belong_to
  has_many :customers, :through => :vehicles, :uniq => true#hace que el cliente aparesca una sola ves
  attr_accessible :name

  def total_vehicles
    vehicles.size # => vehicle.count
  end
end

module VehiclesHelper
  def title(vehicle)#utilizamos como parametro vehicle
    "<strong>#{vehicle.brand.name}</strong> - #{vehicle.name} <em>(#{vehicle.vehicle_type.name})</em>".html_safe
  end

  def dollar_oficial_compra
    Dollar.find(:first, :params => {:dollar_type => 1}).buyer
  end

  def dollar_oficial_venta
    Dollar.find(:first, :params => {:dollar_type => 1}).seller
  end

  def dollar_blue_compra
    Dollar.find(:last, :params => {:dollar_type => 2}).buyer
  end

  def dollar_blue_venta
    Dollar.find(:last, :params => {:dollar_type => 2}).seller
  end




  
end

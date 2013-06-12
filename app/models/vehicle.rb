class Vehicle < ActiveRecord::Base
  belongs_to :brand
  belongs_to :vehicle_type
  belongs_to :customer
  attr_accessible :name, :brand_id, :vehicle_type_id, :customer_id, :precio, :amount_km, :fuel_type, :model_year

  validates :precio, :fuel_type, :model_year, :presence => {:message =>'completa el campo'}
  validates :precio, :numericality => {:greater_than => 0}#solo números decimales positivos
  validates :amount_km, :numericality => {:only_integer => true, :greater_than => 0}, :allow_blank => true#solo números enteros positivos

  dollarizeme :precio #aca agregamos la gema que creamos

  def full_name
    "#{brand.name} #{name} (#{vehicle_type.name})"
    
  end

  def amount_in_pesos
    d = Dollar.find(:first, :params => {:dollar_type => 1})
    ((precio || 0)* d.buyer).to_s
  end
end

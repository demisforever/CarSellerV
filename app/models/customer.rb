class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :vip

  validates :email, :name, :presence => {:message =>'completa el campo'} #esto hace que el campo tenga que estar si o si completo
  #validates :phone :numericality => true, :allow_blank => true #esta ultima es una validacion de que tiene que estar en blanco
end

class AccesoriosController < ApplicationController
  # GET /brands
  # GET /brands.json
  def index
    @accesorios = Accesory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accesorios }
    end
  end
end
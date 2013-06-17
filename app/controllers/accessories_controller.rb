class AccessoriesController < ApplicationController
  # GET /brands
  # GET /brands.json
  def index
    @accessories = Accessory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accessories }
    end
  end
end
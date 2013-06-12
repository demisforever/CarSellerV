class PrincipalsController < ApplicationController
  # GET /vehicle_types
  # GET /vehicle_types.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicle_types }
    end
  end
end
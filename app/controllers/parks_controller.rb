class ParksController < ApplicationController

  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    state_id = Country.search(params[:state])
    @park = Park.create(park_params)
    @park.state_id = state_id
    json_response(@park)
  end

  def update
    @park = Park.find(params[:id])
    @park.update(park_params)
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def park_params
    params.permit(:park_name, :state_id)
  end


end

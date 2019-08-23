class V1::ParksController < ApplicationController

  def index
    state_name = params[:state]
    if state_name == nil
      @parks = Park.all
    else
      state = State.search(params[:state])
      if state[0]
        @parks = Park.where(state_id: state[0].id)
      else
        @parks = []
      end
    end
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create(park_params)
    # @park.state_id = state_id
    json_response(@park)
  end

  def update
    @park = Park.find(params[:id])
    @park.update(park_params)
    json_response(@park)
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

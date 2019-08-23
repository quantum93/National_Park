class StatesController < ApplicationController

  def index
    @states = State.pluck("state_name")
    json_response(@states)
  end

  def show
    @state = State.find(params[:id].to_str)
    json_response(@state)
  end

  def create
    @state = State.create(state_params)
    json_response(@state)
  end

  def update
    @state = State.find(params[:id])
    @state.update(state_params)
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
  end

  # This function is for the scope feature
  def most_state
    @most_parks = State.most_parks
    json_response(@most_parks)
  end

  # This is for the random selection of state
  def suprising_state
    @random_place = State.random_place
    @parks = Park.where(state_id: @random_place[0].id)
    json_response([@random_place, @parks])
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def state_params
    params.permit(:state_name)
  end

end

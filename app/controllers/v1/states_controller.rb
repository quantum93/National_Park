class V1::StatesController < ApplicationController

  def index
    @states = State.pluck("state_name")
    json_response(@states)
  end

  def show
    @state = State.find(params[:id].to_str)
    @parks = Park.where(state_id: @state["id"])
    json_response([@state, @parks])
  end

  def create
    @state = State.create!(state_params)
    json_response(@state)
  end

  def update
    @state = State.find(params[:id])
    if @state.update!(state_params)
      render status: 200, json: {
        message: "This state has been updated successfully."
      }
    end
  end

  def search
    if State.find_by_state_name(params[:state_name])
      @state = State.find_by_state_name(params[:state_name])
      json_response(@state)
    else
      json_response("Returned no results for '#{params[:state_name]}'")
    end
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

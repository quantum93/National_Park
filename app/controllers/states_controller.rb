class StatesController < ApplicationController

  def index
    @states = "Oregon"
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

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def state_params
    params.permit(:state_name)
  end

end

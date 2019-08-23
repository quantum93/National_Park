class StatesController < ApplicationController

  def index
    @states = "Oregon"
    json_response(@states)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status
  end
end

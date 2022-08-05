class ApplicationController < ActionController::API
  
  rescue_from StandardError, 
    :with => :rescue_error

  def rescue_error(error)
    render json: error, status: :bad_request
  end

  
end

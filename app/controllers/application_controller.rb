class ApplicationController < ActionController::API
    # protect_from_forgery with: :null_session
  
  # Skip redirect to login page for API requests and return 401 instead
  def authenticate_user_for_api!
    unless user_signed_in?
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end

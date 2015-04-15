class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def customers_to_call
    session[:customers_to_call] ||= []
    return session[:customers_to_call].map do |id|
      Customer.find(id)
    end
  end
  helper_method :customers_to_call
end

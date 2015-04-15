class HomeController < ApplicationController
  def index
    @customers = Customer.all
  end

  def missing_email
    @customers = Customer.where('email_address is NULL OR email_address = ""')
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end
  
  def add_customer_to_call_list
    session[:customers_to_call] << params[:id].to_i
    session[:customers_to_call].uniq!
    redirect_to :back
  end
  
  def remove_customer_from_call_list
    session[:customers_to_call].delete(params[:id].to_i)
    redirect_to :back
  end
  
  def clear_to_call_list
    session[:customers_to_call] = nil
    redirect_to :back
  end
end

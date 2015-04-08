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
end

class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end
  def show

  end
end

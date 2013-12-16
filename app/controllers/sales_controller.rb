class SalesController < ApplicationController
  def index
    @sales = Sale.all
    @sale_within_last_6_months = Sale.last_6_months
  end
end

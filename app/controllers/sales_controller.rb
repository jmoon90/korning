class SalesController < ApplicationController
  def index
    @sale_within_last_6_months = Sale.last_6_months
  end
end

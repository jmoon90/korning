class Sale < ActiveRecord::Base
  belongs_to :employee

  def self.last_6_months
    Sale.where(sale_date: 15.month.ago)
  end
end

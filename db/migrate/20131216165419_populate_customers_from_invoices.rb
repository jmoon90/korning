class PopulateCustomersFromInvoices < ActiveRecord::Migration
  def up
    Invoice.find_each do |invoice|
      customer = Customer.find_by(account_number: invoice.account_no)
      customer.update_attribute(:invoice_id, invoice.id)
    end
  end

  def down
  end
end

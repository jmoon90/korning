class PopulateInvoicesFromCustomer < ActiveRecord::Migration
  def up
    Sale.find_each do |sale|
      invoice_info = sale.customer_and_account_no.split(' ')
      invoice = Invoice.find_or_initialize_by(invoice_no: sale.invoice_no)
      invoice.account_no = invoice_info[1].gsub!(/[\(\)]/,'')
      invoice.save
    end
  end

  def down
    Invoice.delete_all
  end
end

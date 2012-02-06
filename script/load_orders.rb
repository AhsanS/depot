Order.transaction do
  (1..100).each do |i|
    Order.create(name: "Customer #{i}", address: "#{i} Main Street", email: "customer-#{i}@example.com", pay_type: "Check")
  end
end

# Run the following at the console to create 100 orders with empty line items
# rails runner script/load_orders.rb

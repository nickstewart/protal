describe 'Navigting Orders' do
  
  it 'allows navigation from the order detail page to the listings page' do
    order = Order.create(customer: "Acme1",
                          model_number: "XYZ22",
                          description: "New New Thing",
                          sales_person: "Jill",
                          total: 678.00,
                          terms: "30 Days")
  
    visit order_url(order)
    
    click_link "All Orders"
    
    expect(current_path).to eq(orders_path)
                          
  end
end
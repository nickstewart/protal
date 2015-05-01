require 'spec_helper'

describe "Viewing the list of orders" do

  it "shows the orders" do
    
    order1 = Order.create(customer: "Acme1",
                          model_number: "XYZ22",
                          description: "New New Thing",
                          sales_person: "Joe",
                          total: 678.00,
                          payment_terms: "30 Days")
                          
    order2 = Order.create(customer: "Acme2",
                          model_number: "MKU23",
                          description: "Another Thing",
                          sales_person: "Tina",
                          total: 821.00,
                          payment_terms: "30 Days")
                          
    order3 = Order.create(customer: "Acme3",
                          model_number: "ADS99",
                          description: "Yet Another Thing",
                          sales_person: "Jill",
                          total: 907.00,
                          payment_terms: "30 Days")
                          
    visit orders_url

    expect(page).to have_text("3 Orders")
    
    expect(page).to have_text(order1.customer)
    expect(page).to have_text(order1.model_number)
    expect(page).to have_text(order1.description)
    expect(page).to have_text(order1.sales_person)
    expect(page).to have_text(order1.total)
    expect(page).to have_text(order1.payment_terms)
    
    expect(page).to have_text(order2.customer)
    expect(page).to have_text(order2.model_number)
    expect(page).to have_text(order2.description)
    expect(page).to have_text(order2.sales_person)
    expect(page).to have_text(order2.total)
    expect(page).to have_text(order2.payment_terms)
    
    expect(page).to have_text(order3.customer)
    expect(page).to have_text(order3.model_number)
    expect(page).to have_text(order3.description)
    expect(page).to have_text(order3.sales_person)
    expect(page).to have_text(order3.total)
    expect(page).to have_text(order3.payment_terms)
  end

end
def order_attributes(overrides = {})
  {
    customer: "Acme1",
    model_number: "XYZ22",
    description: "New New Thing",
    sales_person: "Jill",
    total: 678.00,
    delivery_due_on: "2015-05-2"
  }.merge(overrides)
end
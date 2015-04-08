json.array!(@customers) do |customer|
  json.extract! customer, :id, :full_name, :phone_number, :email_address, :image, :notes
  json.url customer_url(customer, format: :json)
end

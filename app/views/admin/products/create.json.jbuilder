json.array! @products do |product|
  json.name product.name
  json.description product.description
  json.active product.active
  json.created_at product.created_at
  json.updated_at product.updated_at
end
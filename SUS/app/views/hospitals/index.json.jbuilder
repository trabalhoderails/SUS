json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :nome, :codigo, :endereco
  json.url hospital_url(hospital, format: :json)
end

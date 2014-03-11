json.array!(@enfermeiros) do |enfermeiro|
  json.extract! enfermeiro, :id, :nome, :matricula, :cargo
  json.url enfermeiro_url(enfermeiro, format: :json)
end

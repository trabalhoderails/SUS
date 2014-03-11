json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :codigo, :idade
  json.url paciente_url(paciente, format: :json)
end

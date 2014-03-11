json.array!(@internacaos) do |internacao|
  json.extract! internacao, :id, :paciente, :medico, :enfermeiro, :entrada, :saida
  json.url internacao_url(internacao, format: :json)
end

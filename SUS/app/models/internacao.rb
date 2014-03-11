class Internacao < ActiveRecord::Base
	has_one :paciente
	has_one :hospital
	has_many :enfermeiros
	has_many :medicos
	
	attr_accessible :entrada, :saida
end

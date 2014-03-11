class Enfermeiro < Empregado
	has_and_belongs_to_many :internacaos
	
	attr_accessible :cargo
end

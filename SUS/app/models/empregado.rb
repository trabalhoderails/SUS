class Empregado < ActiveRecord::Base
	has_and_belongs_to_many :hospitals, :limit => 3
	
	#attr_accessible :nome, :matricula

end

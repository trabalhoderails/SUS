class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
			t.string :nome
			t.string :codigo
			t.string :idade
			
      t.timestamps
    end
  end
end

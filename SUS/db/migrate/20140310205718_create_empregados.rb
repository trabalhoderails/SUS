class CreateEmpregados < ActiveRecord::Migration
  def change
    create_table :empregados do |t|
			t.string :nome
			t.string :matricula
			
			
      t.timestamps
    end
  end
end

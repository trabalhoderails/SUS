class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
			t.string :especialidade
      t.timestamps
    end
  end
end

class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
			t.string :nome
			t.integer :codigo
			t.string :endereco
      t.timestamps
    end
  end
end

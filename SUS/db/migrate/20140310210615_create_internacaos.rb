class CreateInternacaos < ActiveRecord::Migration
  def change
    create_table :internacaos do |t|
			t.datetime :entrada
			t.datetime :saida
      t.timestamps
    end
  end
end

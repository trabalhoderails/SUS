class CreateEnfermeiros < ActiveRecord::Migration
  def change
    create_table :enfermeiros do |t|
			t.string :cargo
      t.timestamps
    end
  end
end

class CreateClinicsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.string :title, null: false
      t.string :speaker, null: false
      t.string :description

      t.timestamps null: false
    end
  end
end

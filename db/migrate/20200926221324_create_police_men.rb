class CreatePoliceMen < ActiveRecord::Migration[6.0]
  def change
    create_table :police_men do |t|
      t.string :name
      t.string :rut
      t.integer :badge
      t.references :police_unit, foreign_key: true

      t.timestamps
    end
  end
end

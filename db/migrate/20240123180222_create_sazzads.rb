class CreateSazzads < ActiveRecord::Migration[7.1]
  def change
    create_table :sazzads do |t|
      t.string :name
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end

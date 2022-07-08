class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.boolean :probono
      t.string :specialty
      t.integer :license_num

      t.timestamps
    end
  end
end

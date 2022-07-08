class CreateHotpitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.boolean :public
      t.integer :phone
      t.string :location

      t.timestamps
    end
  end
end

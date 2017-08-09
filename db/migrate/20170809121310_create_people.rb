class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :telephone
      t.integer :number
      t.string :website

      t.timestamps
    end
  end
end

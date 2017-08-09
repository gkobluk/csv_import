class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email_address
      t.integer :telephone_number
      t.string :website

      t.timestamps
    end
  end
end

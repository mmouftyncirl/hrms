class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :title
      t.string :firstname
      t.string :surname
      t.date :dob
      t.text :address
      t.integer :phonenumber
      t.string :emailid
      t.string :gender

      t.timestamps null: false
    end
  end
end

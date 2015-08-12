class CreateAnnualleaves < ActiveRecord::Migration
  def change
    create_table :annualleaves do |t|
      t.date :startdate
      t.date :enddate
      t.text :leavecomment
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

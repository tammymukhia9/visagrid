class CreateVisitPurposes < ActiveRecord::Migration[5.2]
  def change
  	drop_table(:visit_purposes, if_exists: true)
    create_table :visit_purposes do |t|
      t.string :visit_name
      t.text :visit_info

      t.timestamps
    end
  end
end

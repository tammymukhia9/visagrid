class CreateMainsearches < ActiveRecord::Migration[5.2]
  def change
    create_table :mainsearches do |t|
      t.string :nationality
      t.string :source
      t.string :destination
      t.string :visit_purpose

      t.timestamps
    end
  end
end

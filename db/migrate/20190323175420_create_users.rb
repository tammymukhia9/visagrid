class CreateUsers < ActiveRecord::Migration[5.2]
  def change
  	drop_table(:users, if_exists: true)
    create_table :users do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end

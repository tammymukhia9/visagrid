class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    drop_table(:members, if_exists: true)
    create_table :members do |t|
      t.string :mem_first_name
      t.string :mem_last_name
      t.string :username
      t.string :password
      # t.string :email

      t.timestamps
    end
  end
end

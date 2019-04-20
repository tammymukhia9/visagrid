class AddClearanceToMembers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :members do |t|
      t.string :encrypted_password, limit: 128
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128
    end

    add_index :members, :email
    add_index :members, :remember_token

    members = select_all("SELECT id FROM members WHERE remember_token IS NULL")

    members.each do |member|
      update <<-SQL
        UPDATE members
        SET remember_token = '#{Clearance::Token.new}'
        WHERE id = '#{member['id']}'
      SQL
    end
  end

  def self.down
    change_table :members do |t|
      t.remove :email, :encrypted_password, :confirmation_token, :remember_token
    end
  end
end
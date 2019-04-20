class AddMemberToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :member, foreign_key: true
  end
end

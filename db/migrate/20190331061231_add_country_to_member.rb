class AddCountryToMember < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, :country, foreign_key: true
  end
end

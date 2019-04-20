class AddVisaInfoToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :visa_info, foreign_key: true
  end
end

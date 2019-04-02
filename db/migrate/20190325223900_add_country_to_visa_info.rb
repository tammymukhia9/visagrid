class AddCountryToVisaInfo < ActiveRecord::Migration[5.2]
  def change
    # add_reference :visa_infos, :country, foreign_key: true
    add_column :visa_infos, :source_id, :integer
    add_column :visa_infos, :destination_id, :integer
    add_column :visa_infos, :nationality_id, :integer
  end
end

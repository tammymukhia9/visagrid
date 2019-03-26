class AddCountryToVisaInfo < ActiveRecord::Migration[5.2]
  def change
    add_reference :visa_infos, :country, foreign_key: true
  end
end

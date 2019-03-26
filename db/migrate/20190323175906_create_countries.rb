class CreateCountries < ActiveRecord::Migration[5.2]
  def change
  	drop_table(:countries, if_exists: true)
    create_table :countries do |t|
      t.string :country_name

      t.timestamps
    end
  end
end

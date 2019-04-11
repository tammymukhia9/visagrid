class CreateVisaInfos < ActiveRecord::Migration[5.2]
  def change
  	drop_table(:visa_infos, if_exists: true)
    create_table :visa_infos do |t|
      t.text :visa_info
      t.text :links
      

      t.timestamps
    end
  end
end

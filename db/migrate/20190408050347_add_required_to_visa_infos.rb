class AddRequiredToVisaInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :visa_infos, :required, :boolean
  end
end

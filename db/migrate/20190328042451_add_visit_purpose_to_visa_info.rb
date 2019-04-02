class AddVisitPurposeToVisaInfo < ActiveRecord::Migration[5.2]
  def change
    add_reference :visa_infos, :visit_purpose, foreign_key: true
  end
end

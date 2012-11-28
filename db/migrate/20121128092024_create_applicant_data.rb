class CreateApplicantData < ActiveRecord::Migration
  def change
    create_table :applicant_data do |t|
      t.references :college_header
      t.references :applicant
      t.string :value
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
    add_index :applicant_data, :college_header_id
    add_index :applicant_data, :applicant_id
  end
end

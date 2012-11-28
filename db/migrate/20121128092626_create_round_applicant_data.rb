class CreateRoundApplicantData < ActiveRecord::Migration
  def change
    create_table :round_applicant_data do |t|
      t.string :interviewee
      t.references :applicants
      t.references :round
      t.boolean :status
      t.string :comment

      t.timestamps
    end
    add_index :round_applicant_data, :applicants_id
    add_index :round_applicant_data, :round_id
  end
end

class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
    t.string :created_by
    t.string :updated_by

    t.timestamps
    end
  end
end

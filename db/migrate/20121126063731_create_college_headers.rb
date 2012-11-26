class CreateCollegeHeaders < ActiveRecord::Migration
  def change
    create_table :college_headers do |t|
      t.integer :college_id, :references => :colleges
      t.integer :header_id, :references => :headers
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end

class CreateCollegeHeader < ActiveRecord::Migration
  def change
    create_table :college_headers do |t|
      t.integer :college_id, :references => :college
      t.integer :header_id, :references => :header
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end

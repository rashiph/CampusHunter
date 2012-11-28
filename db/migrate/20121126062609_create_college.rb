class CreateCollege < ActiveRecord::Migration
  def change
    create_table :college do |t|
      t.string :name
      t.integer :cutoff
      t.integer :number_of_applicants
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end

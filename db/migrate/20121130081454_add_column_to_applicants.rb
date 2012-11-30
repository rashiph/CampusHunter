class AddColumnToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :college_id, :integer
  end
end

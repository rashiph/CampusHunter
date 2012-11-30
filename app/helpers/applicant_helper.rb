require "csv"
module ApplicantHelper
  private
  def upload_csv(file_name, college)
col = college
file = file_name
    header_row = CSV.new(file.tempfile, :headers => false).first
      header_row.each do |header|
        if Header.find_by_name(header).nil?
          Header.create!(:name => header)
        end
        header_id = Header.find_by_name(header).id
        CollegeHeader.create!(:college_id => college.id, :header_id => header_id)
      end
      CSV.new(file_name.tempfile, :headers => true).each do |row|
        app = Applicant.new()
        app.save
        app.update_attribute(:college_id, college.id)
        hash = row.to_hash
        (hash.keys()).each do |key|
          header = Header.find_by_name(key)
          if header.nil?
            header = Header.create!(:name => key)
          end
          college_header = CollegeHeader.where(:college_id => college.id, :header_id => header.id).first
          if(college_header.nil?)
          college_header = CollegeHeader.create!(:college_id => college.id, :header_id => header.id)
          end
          ApplicantData.create!(:college_header_id => college_header.id, :applicant_id => app.id, :value => hash[key])
        end
      end
  end
end
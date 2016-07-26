class Company < ActiveRecord::Base
  def self.import(file)
    companies = Array.new
    CSV.foreach(file.path, headers: true) do |row|
      # Company.create! row.to_hash
      companies.push(Compnay.new row.to_hash)
    end
    return companies
  end
end

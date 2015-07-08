class Education

  attr_accessor :id, :start_date, :end_date, :details, :degree, :university_name

  def initialize(hash)
    @id = hash["id"]
    @start_date = hash["start_date"]
    @end_date = hash["end_date"]
    @degree = hash["degree"]
    @university_name = hash["university_name"]
    @details = hash["details"]
  end

end
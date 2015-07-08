class Experience

  attr_accessor :id, :start_date, :end_date, :details, :job_title, :company_name

  def initialize(hash)
    @id = hash["id"]
    @start_date = hash["start_date"]
    @end_date = hash["end_date"]
    @details = hash["details"]
    @job_title = hash["job_title"]
    @company_name = hash["company_name"]
  end

end
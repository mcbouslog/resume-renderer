class Capstone

  attr_accessor :id, :name, :description, :url, :screenshot

  def initialize(hash)
    @id = hash["id"]
    @name = hash["name"]
    @description = hash["description"]
    @url = hash["url"]
    @screenshot = hash["screenshot"]
  end

end
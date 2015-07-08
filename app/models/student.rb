class Student

  attr_accessor :id, :first_name, :last_name, :email, :phone_number, :short_bio, :linkedin, :twitter, :blog_site, :resume, :github, :photo 

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
    @email = hash["email"]
    @phone_number = hash["phone_number"]
    @short_bio = hash["short_bio"]
    @linkedin = hash["linkedin"]
    @twitter = hash["twitter"]
    @blog_site = hash["blog_site"]
    @resume = hash["resume"]
    @github = hash["github"]
    @photo = hash["photo"]
  end

end
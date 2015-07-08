class ResumePdf < Prawn::Document

  def initialize(id)
    all_info = Unirest.get("http://localhost:3001/students/#{id}.json").body
    student = Student.new(all_info)
    experiences = all_info["experiences"]
    educations = all_info["educations"]
    capstones = all_info["capstones"]
    skills = all_info["skills"]

    super(left_margin: 40)
    
    text student.full_name, :align => :center, :size => 35, :style => :bold, :color => "c12283"
    text student.email, :align => :left, :size => 10
    text student.phone_number, :align => :left, :size => 10
    move_down 5
    text "Connect with Me!", :align =>:left, :size => 16, :style => :bold_italic
    stroke_horizontal_rule
    move_down 7
    text student.twitter, :align => :left, :size => 10, :style => :italic
    text student.linkedin, :align => :left, :size => 10, :style => :italic
    text student.github, :align => :left, :size => 10, :style => :italic
    text student.blog_site, :align => :left, :size => 10, :style => :italic
    move_down 10
    text "Short Bio", :align =>:left, :size => 16, :style => :bold_italic
    stroke_horizontal_rule
    move_down 7
    text student.short_bio, :size => 10
    move_down 10
    
    text "Professional Experiences", :align =>:left, :size => 16, :style => :bold_italic
    stroke_horizontal_rule
    move_down 7
    
    experiences.each do |experience|
      experience = Experience.new(experience)
      text experience.job_title, :align => :left, :size => 12, :style => :bold_italic
      text experience.company_name, :align => :left, :size => 10, :style => :bold_italic
      text experience.start_date + " " + experience.end_date, :align => :left, :size => 10, :style => :bold_italic
      move_down 3
      text experience.details, :align => :left, :size => 10, :style => :bold_italic
      move_down 10
    end
    
    # text "Education", :align =>:left, :size => 16, :style => :bold_italic
    # stroke_horizontal_rule
    # move_down 7
    
    # text educations.degree, :align => :left, :size => 12, :style => :bold_italic
    # text educations.university_name, :align => :left, :size => 10, :style => :bold_italic
    # text educations.start_date + " " + educations.end_date, :align => :left, :size => 10, :style => :bold_italic
    # move_down 3
    # text educations.details, :align => :left, :size => 10, :style => :bold_italic
    # move_down 10
    
    # text "Capstone Projects", :align =>:left, :size => 16, :style => :bold_italic
    # stroke_horizontal_rule
    # move_down 7
    
    # text capstones.name, :align => :left, :size => 12, :style => :bold_italic
    # text capstones.url, :align => :left, :size => 10, :style => :bold_italic
    # text capstones.start_date + " " + capstones.end_date, :align => :left, :size => 10, :style => :bold_italic
    # move_down 3
    # text capstones.details, :align => :left, :size => 10, :style => :bold_italic
    
    # move_down 10
    
    stroke_axis
  end

end
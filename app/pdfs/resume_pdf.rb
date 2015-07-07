class ResumePdf < Prawn::Document
  
  def initialize(id)
    super(left_margin: 40)
    text "First_Name Last_Name", :align => :center, :size => 14, :style => :bold
    text "student_##{id}@email.com", :align => :center, :size => 10
    move_down 20
    text "Professional Experience", :size => 12
    stroke_horizontal_rule
    move_down 10
    text "Company 1 - Location, State", :size => 10
    text "Title Extended to Test Italic", :size => 9, :style => :italic
    stroke_axis
  end

end
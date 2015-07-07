class ResumePdf < Prawn::Document
  def initialize()
    super(left_margin: 40)
    text "Hello World!", color: "000000", size: 30
  end


end
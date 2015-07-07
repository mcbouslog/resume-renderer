class PdfResumesController < ApplicationController

  def index
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ResumePdf.new(params[:id])
        send_data pdf.render, filename: "resume.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
  
end

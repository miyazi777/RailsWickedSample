class TestController < ApplicationController
  def show
    @vvv = "abc"
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "pdffile",
          show_as_html: params[:debug].present?  end
    end
  end
end

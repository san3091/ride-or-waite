class HomeController < ApplicationController
  def index
    @contact_request = ContactRequest.new
  end

  def download_booklet
    send_file "#{Rails.root}/public#{helpers.asset_path("ride-or-wait-booklet.pdf")}", type: "application/pdf", filename: "ride-or-wait-booklet.pdf"
  end
end


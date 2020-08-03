class HomeController < ApplicationController
  def index
    @contact_request = ContactRequest.new
  end
end

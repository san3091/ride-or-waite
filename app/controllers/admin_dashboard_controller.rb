class AdminDashboardController < AdminController
  def index
    @contact_requests = ContactRequest.all
  end
end

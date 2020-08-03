class ContactRequestsController < ApplicationController
  def create
    @contact_request = ContactRequest.new(contact_request_params)

    if @contact_request.save
      redirect_to '/', notice: "Thank you! We'll let you know when we're cooking up a new batch.", status: :ok
    else
      flash[:error] = "Oops! There was an error! Please try again or write us directly to contact@santiagoqg.com"
      redirect_to '/', status: 422
    end
  end

  private

  def contact_request_params
    params.require(:contact_request).permit(:name, :email)
  end
end

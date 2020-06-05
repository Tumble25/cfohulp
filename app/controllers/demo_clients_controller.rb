class DemoClientsController < ApplicationController
  skip_before_action :authenticate_user!, :raise => false
  # skip_after_action :verify_authorized

def new
  @demo_client = DemoClient.new
end

def create
  @demo_client = DemoClient.new(demo_client_params)
  if @demo_client.save
      flash[:notice] = "Bedankt, we nemen snel contact met je op!"
      mail = UserMailer.with(demo_client: @demo_client).lead
      mail.deliver_now
      redirect_to root_path

    else
      flash[:error] = "Helaas moet het gehele formulier ingevuld zijn"
      redirect_to root_path
    end
end

private
def demo_client_params
    params.require(:demo_client).permit(:company, :first_name, :last_name, :email, :telephone, :message, :method)
end
end

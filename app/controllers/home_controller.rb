class HomeController < ApplicationController
  
  def index
    @order=Order.new
    @order_json = @order.to_json
    @order_profiles = OrderProfile.find_each.as_json
  end
  

  def get_coffee
    TwilioClient.send_text_message
    redirect_to home_index_path, notice: 'A runner is on their way!'
  end
  
  private

  def home_params
    params[:home].permit[:order_profile_id]
  end
  
end

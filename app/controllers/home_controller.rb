class HomeController < ApplicationController
  
  def index
    @order_profiles = OrderProfile.find_each.as_json
  end
  
  def submit_order
    @order = Order.create(order_profile_id: "1")
    TwilioClient.send_text_message(@order)
    redirect_to home_index_path, notice: 'Order Succesfully Submitted!'
  end

  # def get_coffee
  #   TwilioClient.send_text_message
  #   redirect_to home_index_path, notice: 'A runner is on their way!'
  # end
  
  private

  def home_params
    params[:home].permit[:order_profile_id]
  end

end

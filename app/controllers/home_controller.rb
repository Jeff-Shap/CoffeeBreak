class HomeController < ApplicationController
  def index
  end
  def get_coffee
    TwilioClient.send_text_message
    redirect_to home_index_path, notice: 'A runner is on their way!'
  end
end

class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create(profile_id)
    @order = Order.new

    respond_to do |format|
      if @order.save
        format.html { redirect_to @ordere, notice: 'Order was succesfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order= Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params[:order].permit(:order_profile_id)
    end


end

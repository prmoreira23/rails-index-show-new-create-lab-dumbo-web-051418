class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def create
    coupon = Coupon.create(coupon_params)
    redirect_to coupon
  end

  private
  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end

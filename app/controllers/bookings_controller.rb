class BookingsController < ApplicationController

  def booking
    @dinosaur = Dinosaur.find(params[:id])
  end

  def create
    @booking = Booking.new(params[:booking_id])
  end

  private
    def booking_params
      params.require(:booking).permit(:id, :date, :user_id)
    end
end

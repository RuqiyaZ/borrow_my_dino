class BookingsController < ApplicationController
  # before_action :set_booking, only: ['new', 'show', 'edit', 'update', 'destroy' ]

    def new
      @bookings = Booking.new
      set_dinosaur
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.dinosaur = @dinosaur
      @booking.save
      redirect_to booking_path(@booking)
    end

    def show
    end

    def edit
    end

    def update
      @booking.update(booking_params)
      flash[notice:] = "Booking was successfully updated."
      redirect_to booking_path(@booking)
    end

    def destroy
      @booking.destroy
      redirect_to booking_path(@booking)
    end

    private

    # def set_booking
    #   @booking = Booking.find(params[:id])
    # end

    def set_dinosaur
      @dinosaur = Dinosaur.find(params[:dinosaur_id])
    end

    def booking_params
      params.require(:booking).permit(:dinosaur_id, :user_id, :date)
    end
end

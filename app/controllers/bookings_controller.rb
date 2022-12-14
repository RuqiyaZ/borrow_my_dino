class BookingsController < ApplicationController
  # before_action :set_booking, only: ['new', 'show', 'edit', 'update', 'destroy' ]
    before_action :authenticate_user!
    def new
      @booking = Booking.new
      find_dinosaur
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      find_dinosaur
      @booking.dinosaur = @dinosaur
      @booking.save
      redirect_to booking_path(@booking)
    end

    def show
      find_booking
      @dinosaur = @booking.dinosaur
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

    def find_dinosaur
      @dinosaur = Dinosaur.find(params[:dinosaur_id])
    end

    def find_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:dinosaur_id, :start_date, :end_date)
    end
end

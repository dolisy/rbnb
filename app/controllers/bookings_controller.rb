class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @book = Book.find(params[:book_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.book = Book.find(params[:book_id])
    @booking.save

    redirect_to book_booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:book_id, :user_id)
  end
end

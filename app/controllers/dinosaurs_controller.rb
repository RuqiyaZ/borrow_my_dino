class DinosaursController < ApplicationController
  before_action :set_dinosaur, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @dinosaur = Dinosaur.new
  end

  def index
    #should be dinosaur(s) that was errorring
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    @dinosaur.user = current_user
    if @dinosaur.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dinosaur.update(dinosaur_params)
    flash[notice:] = "Booking was successfully updated."
    redirect_to dinosaurs_path(@dinosaur)
  end

  def destroy
    @dinosaur.destroy
    redirect_to root_path
  end

  private

  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:id])
  end

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :description, :age, :diet, :origin, :photo)
  end

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path , notice: "Please Login to view that page!"
    end
  end
end

class DinosaursController < ApplicationController
  private
  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:id])
  end

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :description, :age, :diet, :origin, :image_url)
  end
end

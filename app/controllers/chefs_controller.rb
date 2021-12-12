class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @chefs = Chef.search_by_speciality_and_experience(params[:query])
    else
      @chefs = Chef.all
    end
    @markers = @chefs.geocoded.map do |chef|
      {
        lat: chef.latitude,
        lng: chef.longitude,
        info_window: render_to_string(partial: "info_window", locals: { chef: chef }),
        image_url: helpers.asset_url('lemon.png')
      }
    end
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    if @chef.save
      redirect_to chef_path(@chef)
    else
      render :new
    end
  end

  private

  def chef_params
    params.require(:chef).permit(:speciality, :experience, photos: [])
  end
end

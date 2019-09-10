class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    Profile.create(profile_params)
    flash[:success] = 'Profile Created'
    redirect_to root_path

  end

  def edit
  end

  def update
  end

  def index
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :lastname)
  end

  
end

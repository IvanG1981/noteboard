class ProfilesController < ApplicationController
  before_action :authenticate_user!
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)


    if @profile.save
      redirect_to root_path
      flash[:success] = "New Profile Created"
    else
      flash[:danger]= "Error creating Profile"
      render "new"
    end

  end

  def edit
  end

  def update
  end

  def index
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :lastname, :nickname)
  end


end

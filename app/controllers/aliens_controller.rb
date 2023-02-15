class AliensController < ApplicationController

  def new
    # this is for the NESTED form
    @planet = Planet.find(params[:planet_id])
    @alien = Alien.new
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @alien = Alien.new(alien_params)
    @alien.planet = @planet
    if @alien.save
      redirect_to planet_path(@planet)
    else
      # 'show the new.html.erb view with the @alien that we just tried to create'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @alien = Alien.find(params[:id])
    @alien.destroy
    redirect_to planet_path(@alien.planet)
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :image_url)
  end
end

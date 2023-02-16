class MutationsController < ApplicationController

  def new
    @alien = Alien.find(params[:alien_id])
    @mutation = Mutation.new
    # all the powers our alien has:
    # @powers = @alien.powers
    # all the powers our alien DOESNT have:
    @powers = Power.where.not(id: @alien.powers).order(name: :asc)
  end

  def create
    @alien = Alien.find(params[:alien_id])
    @mutation = Mutation.new(mutation_params)
    @mutation.alien = @alien
    if @mutation.save
      redirect_to planet_path(@alien.planet)
    else
      @powers = Power.where.not(id: @alien.powers).order(name: :asc)
      # just shows new.html.erb (it does not run the controller action new)
      render :new, status: :unprocessable_entity
    end
  end

  private

  def mutation_params
    params.require(:mutation).permit(:power_id)
  end
end

class SuperheroesController < ApplicationController
  
  def show
    @superhero = Superhero.find_by(id: params[:id])
    render :show
  end

  def index
    @superheroes = Superhero.all
    render :index
  end

  def create
    @superhero = Superhero.new(
    name: params[:name],
    team: params[:team],
    company: params[:company]
    )
    @superhero.save
    render :show
  end

  def update 
    @superhero = Superhero.find_by(id: params[:id])
    @superhero.name = params[:name] || @superhero.name
    @superhero.team = params[:team] || @superhero.team
    @superhero.company = params[:company] || @superhero.company
    superhero.save
    render :show
  end

  def destroy
    @superhero.find_by(id: params[:id])
    @superhero.destroy
    render json: {message: "Superhero has been removed"}
  end
end

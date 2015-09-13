class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end

  def new
    @mechanic = Mechanic.new
  end

  def create
    mech = Mechanic.new(mech_params)

    if mech.save
      redirect_to mech
    else
      render :new
    end

  end

  def show 
    @mechanic = Mechanic.find(params[:id])
  end

  def edit 
    @mechanic = Mechanic.find(params[:id])
  end

  def update 
    mech = Mechanic.find(params[:id])

    if mech.update(mech_params)
      redirect_to mech
    else
      render :edit
    end
  end

  def destroy 
    mech = Mechanic.find(params[:id]).destroy

    redirect_to mechanics_path
  end

  private
  def mech_params
    params.require(:mechanic).permit(:name, :shop)
  end

end

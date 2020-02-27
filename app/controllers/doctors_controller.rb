class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :destroy]
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to @doctor #doctor_path(:id)
    else
      render :new
    end
  end

  def show
    #BEFORE_ACTION
  end

  def edit
    #use _form but in this case we only have 1 parameter of last_name so it's not super important to edit right now
  end

  def destroy
    #BEFORE_ACTION
    @doctor.destroy
    redirect_to root_path
  end

private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:last_name)
  end

end

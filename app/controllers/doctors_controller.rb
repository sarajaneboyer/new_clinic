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
      redirect_to @doctor
    else
      render :new
    end
  end

  def show
    #BEFORE_ACTION
  end

  def edit
  end

  def destroy
    #BEFORE_ACTION
  end

private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:last_name)
  end

end

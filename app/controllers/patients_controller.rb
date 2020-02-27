class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :destroy]
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new

    if @patient.save
      redirect_to patients_path
    else
      render :new
    end
  end

  def show
    #BEFORE_ACTION
  end

  def edit
    #same as doctors_controller, add this action in later
  end

  def destroy
    @patient.destroy
    redirect_to root_path
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name,:last_name)
  end
end

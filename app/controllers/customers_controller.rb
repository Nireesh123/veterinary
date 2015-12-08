class CustomersController < ApplicationController
  def index
    @customers = Appointment.includes(:doctor, :pet)
  end

  def dashboard

  end
end

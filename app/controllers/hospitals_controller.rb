class HospitalsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def show
        # @hospital = hospital.find(params[:id])
    end
end
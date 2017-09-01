class Api::PledgersController < ApplicationController

    before_action :set_pledger, only: [:show, :update, :destroy]

    def index
        render json: Pledger.all
    end

    def show
        render json: @pledger
    end

    def create
        pledger = Pledger.new(pledger_params)
        if pledger.save
            render json: pledger
        else 
            render json: { message: pledger.erroes }, status: 400
        end
    end

    def update
        if @pledger.update(pledger_params) 
            render json: @pledger
        else
            render json: { message: pledger.erroes }, status: 400
        end
    end

    def destroy
        if @pledger.destroy 
            render status: 204
        else
            render json: { message: "Unable to remove" }, status: 400
        end
    end



    private

    def set_pledger
        @pledger = Pledger.find_by(id: params[:id])
    end


    def pledger_params
        params.require(:pledger).permit(:first_name, :last_name, :pledge, :img_url)
    end



end

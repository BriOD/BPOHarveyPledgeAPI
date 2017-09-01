class Api::PledgersController < ApplicationController
    def index
        render json: Pledger.all
    end


end

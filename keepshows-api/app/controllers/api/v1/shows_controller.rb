class Api::V1::ShowsController < ApplicationController
    def index
       @shows = Show.all 
       render json: @shows 
    end

    def show 
        @show = Show.find(params[:id])
        render json: @show
    end

    def create
        @show = Show.create(show_params)
        render json: @show
    end

    def update
        @show = Show.find(params[:id])
        @show.update(show_params);
        render json: @show
    end 

    def destroy
        @show = Show.find(params[:id])
        @show.delete
        render json: {showId: @show.id}
    end

    private

    def show_params
        params.require(:show).permit(:artist, :date, :note)
    end
end
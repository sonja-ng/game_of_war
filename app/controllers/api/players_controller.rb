class Api::PlayersController < ApplicationController
    def create
        @player = Player.new(player_params)
        if @player.save
            render 'api/players/show'
        else
            render json: @player.errors.full_messages, status: 422
        end
    end

    def show
        @player = Player.find(params[:id])
        render :show
    end

    def update
        @player = Player.find(params[:id])
        if @player.update(player_params)
            render :show
        end
    end

    
private
    def player_params
        params.require(:player).permit(:name, :score)
    end
end
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
        @player = Player.find_by(id: params[:id])
        if @player
            render :show
        else
            render json: { error: "Player does not exist."}
        end
    end

    def update
        @player = Player.find(params[:id])
        @player.update(player_params)
        render :show
    end

    
private
    def player_params
        params.require(:player).permit(:name, :score)
    end
end
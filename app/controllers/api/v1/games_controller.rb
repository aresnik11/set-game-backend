class Api::V1::GamesController < ApplicationController
    # def show
    # end

    def create
        game = Game.new(game_params)
        if game.save
            render json: game
        else
            render json: {errors: game.errors.full_messages}
        end
    end

    private

    def game_params
        params.require(:game).permit(:score, :status)
    end
end

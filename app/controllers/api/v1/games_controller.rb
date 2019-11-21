class Api::V1::GamesController < ApplicationController
    def index
        games = Game.top_10_scores
        render json: games.to_json(include: :user)
    end

    def update
        game = Game.find_by(id: params[:id])
        if game.update(game_params)
            render json: game
        else
            render json: {errors: game.errors.full_messages}
        end
    end

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
        params.require(:game).permit(:score, :status, :user_id)
    end
end

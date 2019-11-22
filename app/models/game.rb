class Game < ApplicationRecord
    belongs_to :user
    
    # filter to return only completed games
    def self.completed_games
        self.all.filter do |game|
            game.status == "completed"
        end
    end

    # sort completed games by score
    def self.sort_by_score
        self.completed_games.sort_by do |game|
            game.score
        end
    end

    # only take first 10 scores of the sorted scores
    def self.top_10_scores
        self.sort_by_score.first(10)
    end
end

class Game < ApplicationRecord
    belongs_to :user
    
    def self.completed_games
        self.all.filter do |game|
            game.status == "completed"
        end
    end

    def self.sort_by_score
        self.completed_games.sort_by do |game|
            game.score
        end
    end

    def self.top_10_scores
        self.sort_by_score.first(10)
    end
end

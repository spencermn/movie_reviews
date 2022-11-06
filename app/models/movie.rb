class Movie < ApplicationRecord
    has_many :reviews
    
    validates :title, presence: true
    validates :director, presence: true
    validates :year, presence: true

    # Returns the average rating of all reviews for this movie.
    def average_rating
        total_reviews = self.reviews.count
        rating_sum = 0
        self.reviews.each do |review|
            rating_sum += review.rating.to_i
        end
        if rating_sum > 0
            return (rating_sum.to_f / total_reviews).round(2)
        end
        0
    end
end

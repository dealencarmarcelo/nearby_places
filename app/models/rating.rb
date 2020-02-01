class Rating < ApplicationRecord
    validates :comment, presence: true
    belongs_to :place
    belongs_to :user

    def self.return_data(place_id)
        self.joins(:user, :place)
            .where(place_id: place_id)
            .select("ratings.id, users.name, places.name,
                     ratings.comment, ratings.score,
                     ratings.created_at"
                    ).as_json
    end
end

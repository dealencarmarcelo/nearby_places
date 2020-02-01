class Place < ActiveRecord::Base
    geocoded_by :place_address
    after_validation :geocode

    validates :cnpj, :name, presence: true, uniqueness: true
    validates :city, :state_code, :country, :address, presence: true

    belongs_to :user
    has_many :ratings

    def place_address
        [address, city, state_code, country].compact.join(', ')
    end
end

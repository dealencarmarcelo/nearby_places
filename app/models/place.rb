class Place < ApplicationRecord
    validates :cnpj, :name, presence: true, uniqueness: true
    validates :city, :state_code, :country, :latitude, :longitude, presence: true

    has_many :comments, as: :commentable
end

class Api::V1::ListPlaces
    attr_reader :errors, :response

    def initialize()
        @response = []
    end

    def prepare_list
        @response = query

        @response

    rescue ActiveRecord::RecordNotFound => e
        render json: { errors: 'Unable to find Places' }, status: 403
    end

    private

    def query
        Place.order(name: :asc)
             .select(:id, :name, :cnpj, :address,
                     :state_code, :country, :latitude, 
                     :longitude, :city
             ).as_json
    end
end
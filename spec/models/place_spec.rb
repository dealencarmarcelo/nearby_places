require 'rails_helper'

RSpec.describe Place, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  name = 'TesteRspec'
  cnpj = '00000000000000'
  address = 'Avenida Caxangá, 1001'
  state_code = 'PE'
  country = 'Brasil'
  city = 'Recife'

  place = Place.new(
    name: name,
    cnpj: cnpj,
    address: address,
    state_code: state_code,
    country: country,
    city: city
  )

  place.save
end

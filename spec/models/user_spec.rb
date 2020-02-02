require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  user = User.create!(name: 'first test', email: 'raaspectest@test.com', password: '12345678')
  user.save

  service = AuthenticateAccess.call(user.email, user.password)
  service.result
end

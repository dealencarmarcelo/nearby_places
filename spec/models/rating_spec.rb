require 'rails_helper'

RSpec.describe Rating, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  comment = 'Comentário de teste'
  score = 10

  rating = Rating.new(
            comment: comment,
            score: score
          )  

  rating.save
end

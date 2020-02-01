class AddRatingAvgToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :rating_avg, :float
    add_column :places, :total_rating, :float, default: 0
  end
end

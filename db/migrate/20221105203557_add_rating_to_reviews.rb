class AddRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    change_table :reviews do |t|
      t.string :rating
    end
  end
end

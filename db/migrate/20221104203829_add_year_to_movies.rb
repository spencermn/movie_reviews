class AddYearToMovies < ActiveRecord::Migration[7.0]
  def change
    change_table :movies do |t|
      t.string :year
    end
  end
end

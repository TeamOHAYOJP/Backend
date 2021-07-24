class AddUniqueIndexToDailyRankings < ActiveRecord::Migration[6.1]
  def change
    add_index :daily_rankings, [:user_id], unique: true
  end
end

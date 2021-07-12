class CreateDailyRankings < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_rankings do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end

# 開発中なので後で追記
# class AddUniqueIndexToDailyRankings < ActiveRecord::Migration[6.1]
#   def change
#     add_index :daily_rankings, [:user_id], unique: true
#   end
end
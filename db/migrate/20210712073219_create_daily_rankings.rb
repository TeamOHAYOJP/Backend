class CreateDailyRankings < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_rankings do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end

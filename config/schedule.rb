# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.

# Rails.rootを使用するために必要
require File.expand_path(File.dirname(__FILE__) + "/environment")
job_type :runner,  "cd :path && /usr/local/bundle/bin/rails runner -e :environment ':task' :output"
# cronを実行する環境変数
rails_env = ENV['RAILS_ENV'] || :development
# cronを実行する環境変数をセット
set :environment, rails_env
# cronのログの吐き出し場所
set :output, "#{Rails.root}/log/cron.log"
ENV.each { |k, v| env(k, v) }

# 4:30にDailyRanking全削除
every 1.day, at: '4:30 am' do
    
    runner "DailyRanking.destroy_all"

end

#　早起きbotを追加していく
every 1.day, at: '7:10 am' do
    
    runner "DailyRanking.create(user_id:1)"
    command "echo 'wake up bot 1'"

end
every 1.day, at: '8:17 am' do
    
    runner "DailyRanking.create(user_id:2)"
    command "echo 'wake up bot 2'"

end
every 1.day, at: '8:49 am' do
    
    runner "DailyRanking.create(user_id:3)"
    command "echo 'wake up bot 3'"

end
every 1.day, at: '9:18 am' do
    
    runner "DailyRanking.create(user_id:4)"
    command "echo 'wake up bot 4'"

end
every 1.day, at: '10:30 am' do
    
    runner "DailyRanking.create(user_id:5)"
    command "echo 'wake up bot 5'"

end
every 1.day, at: '11:01 am' do
    
    runner "DailyRanking.create(user_id:6)"
    command "echo 'wake up bot 6'"

end
every 1.day, at: '12:00 am' do
    
    runner "DailyRanking.create(user_id:7)"
    command "echo 'wake up bot 7'"

end

# Learn more: http://github.com/javan/whenever

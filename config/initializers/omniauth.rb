Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :twitter, ENV['TWITTER_API_KEY'], ENV['TWITTER_API_SECRET'], callback_url: "http://127.0.0.1:3001/api/v1/auth/twitter/callback"
    provider :twitter, "", "", callback_url: "http://127.0.0.1:3001/api/v1/auth/twitter/callback"
end 
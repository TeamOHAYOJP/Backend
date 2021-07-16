Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :twitter, ENV['TWITTER_API_KEY'], ENV['TWITTER_API_SECRET'], callback_url: "http://127.0.0.1:3001/api/v1/auth/twitter/callback"
    provider :twitter, 'rlo2TzMPllvRFyl4Oa1WmFgRd', 'IZKGWH9gcfms6wSBHLCPKqlULSZTBxZcOUQNeNZmv6U7VPJVy6', callback_url: "http://127.0.0.1:3001/auth/twitter/callback"
end 
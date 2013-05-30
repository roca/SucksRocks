BentoSearch.register_engine("gbs") do |conf|
       conf.engine = Rails.env == 'test' ? "BentoSearch::MockEngine" : "BentoSearch::GoogleBooksEngine"
       conf.api_key = ENV.fetch('GOOGLE_APP_ID')
       # any other configuration
end
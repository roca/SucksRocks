BentoSearch.register_engine("gbs") do |conf|
       conf.engine = "BentoSearch::GoogleBooksEngine"
       conf.api_key = ENV.fetch('GOOGLE_APP_ID')
       # any other configuration
end
BentoSearch.register_engine("gsse") do |conf|
       conf.engine = "BentoSearch::GoogleSiteSearchEngine"
       conf.api_key = ENV.fetch('GOOGLE_APP_ID')
       conf.cx = ENV.fetch('GOOGLE_SEARCH_ENGINE_ID')
       # any other configuration
end
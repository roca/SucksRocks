VCR.configure do |config|
	config.cassette_library_dir = "fixtures/cassettes"
	config.hook_into :webmock
	config.filter_sensitive_data("<GOGGLE APP ID>") {ENV.fetch('GOOGLE_APP_ID')}
	config.filter_sensitive_data("<GOGGLE SEARCH ENGINE ID>") {ENV.fetch('GOOGLE_SEARCH_ENGINE_ID')}
end
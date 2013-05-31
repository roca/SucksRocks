class SearchEngine

	def self.count_results(query)
		search(query)
	end

private

	def self.search(query)

		google_site_search_engine = BentoSearch.get_engine("gsse")

		google_site_search_engine.search(query, :semantic_search_field => :title).pagination.count
        
	end
end
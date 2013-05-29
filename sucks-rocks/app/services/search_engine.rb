class SearchEngine

	def self.count_results(query)
		0
	end

	def self.search(term)

		google_books_engine = BentoSearch.get_engine("gbs")

		google_books_engine.search(term, :semantic_search_field => :title).pagination.count

	end
end
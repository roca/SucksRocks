class SearchEngine

	def self.count_results(query)
		search(query)
	end

private

	def self.search(query)

		google_books_engine = BentoSearch.get_engine("gbs")

		t = google_books_engine.search(query, :semantic_search_field => :title).pagination.count
		s = google_books_engine.search(query, :semantic_search_field => :subject).pagination.count
        return s + t
	end
end
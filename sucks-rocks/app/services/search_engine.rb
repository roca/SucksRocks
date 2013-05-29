class SearchEngine

	def self.count_results(query)
		0
	end

	def self.search(term,start,acc)

		if start.nil?
			puts "COUNT: #{acc}"
			return acc
	    else
		  results = GoogleCustomSearchApi.search(term,:start => start)
		  if !results.items.empty? && results.queries.keys.include?("nextPage")
		    	start = results.queries.nextPage.first.startIndex
		  else
		      	start = nil
		  end
		  search(term,start, acc + results.items.size)
		end
	end
end
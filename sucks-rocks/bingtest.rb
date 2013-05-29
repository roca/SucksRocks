require 'rubygems'
require 'rbing'

		bing = RBing.new(ENV.fetch('BING_APP_KEY'))
		rsp = bing.web("ruby")
        puts rsp.web.results[0].title
 


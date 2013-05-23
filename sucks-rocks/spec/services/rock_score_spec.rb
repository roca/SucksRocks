require_relative "../../app/services/rock_score"
describe RockScore do 

	it "returns 0 for unpopular terms" do
		RockScore.for_term("apple").should == 0.0
	end
	it "returns 10 for popular terms"
	it "returns mediocre results for medicore terms"
	it "does not divide by zero"
	#10 * positive / (positive + negative)
	
end
require_relative "../../app/services/score_cache"
require_relative "../../app/services/rock_score"

class  CachedScore 
	class NoScore < RuntimeError;end
end

describe ScoreCache do
	before  :each do
		@term = "microsoft"
		@term_score = 5.5
	end

	it "returns cached scores if they exists" do
		CachedScore.stub(:for_term).with("microsoft") {@term_score }
		ScoreCache.for_term(@term).should == @term_score 
	end
	context "when the term is not cached" do
		before  :each do
			RockScore.stub(:for_term).with(@term) {@term_score }
			CachedScore.stub(:for_term).with(@term).
			and_raise(CachedScore::NoScore)
			CachedScore.stub(:saved_score)
		end
		it "recomputes score" do
			ScoreCache.for_term("microsoft").should == @term_score 
		end
		it "stores new score in the database" do
			CachedScore.should_receive(:saved_score).with(@term,@term_score )
			ScoreCache.for_term(@term)
		end
	end
end

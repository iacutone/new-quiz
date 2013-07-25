require 'spec_helper'

describe "Questions" do

	it "cannot edit topic as non-teacher" do
		login teacher: false
		quiz = create(:quiz)
		visit edit_quiz_path(quiz)
		page.should have_content('Not authorized')
	end
end

require 'spec-helper'

describe User do
	it "signs in user" do
		user = Factory(:user)
		visit root_url
	end

end
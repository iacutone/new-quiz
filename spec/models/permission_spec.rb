require 'spec_helper'

RSpec::Matchers.define :allow do |*args|
	match do |permission|
		permission.allow?(*args).should be_true
	end
end

describe Permission do 
	describe 'as user' do
		subject { Permission.new(build(:user, teacher: false)) }
		it { should allow('quizzes', 'index') }
		it { should allow('quizzes', 'show') }
		it { should_not allow('quizzes', 'new') }
		it { should_not allow('quizzes', 'create') }
		it { should_not allow('quizzes', 'edit') }
		it { should_not allow('quizzes', 'update') }
		it { should_not allow('quizzes', 'destroy') }
	end

	describe 'teacher' do
		subject { Permission.new(build(:user, teacher: true)) }
		it { should allow('quizzes', 'index') }
		it { should allow('quizzes', 'show') }
		it { should allow('quizzes', 'new') }
		it { should allow('quizzes', 'create') }
		it { should allow('quizzes', 'edit') }
		it { should allow('quizzes', 'update') }
		it { should allow('quizzes', 'destroy') }
	end
end
class Question < ActiveRecord::Base
	attr_accessible :content, :quiz_id, :answers_attributes
	has_many :answers
	belongs_to :quiz

	accepts_nested_attributes_for :answers, allow_destroy: true
end

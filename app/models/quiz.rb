# == Schema Information
#
# Table name: quizzes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  quiz_id    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quiz < ActiveRecord::Base
	attr_accessible :name, :questions_attributes
	has_many :questions

	accepts_nested_attributes_for :questions, allow_destroy: true
end

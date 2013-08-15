# == Schema Information
#
# Table name: quizzes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  show_quiz  :boolean          default(FALSE)
#

class Quiz < ActiveRecord::Base
	attr_accessible :name
	has_many :questions
end

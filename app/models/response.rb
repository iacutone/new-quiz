# == Schema Information
#
# Table name: responses
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  quiz_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  answer_id     :integer
#  question_id   :integer
#  answer_choice :boolean
#  choice        :boolean          default(FALSE)
#

class Response < ActiveRecord::Base
  attr_accessible :quiz_id, :content, :user_id, :answer_id, :question_id, :choice, :answer_choice, :response_answer, :response_question

  belongs_to :user
  belongs_to :quiz
  belongs_to :answer
  belongs_to :question
  
end

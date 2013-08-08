# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  quiz_id     :integer
#  content     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  score       :integer
#  answer_id   :integer
#  question_id :integer
#

class Response < ActiveRecord::Base
  attr_accessible :quiz_id, :content, :user_id, :answer_id, :question_id, :result, :results_attributes

  has_many :results
  belongs_to :user
  belongs_to :quiz
  belongs_to :answer
  belongs_to :question

  accepts_nested_attributes_for :results

  def parse_questions
    array = []
    binding.pry
  end

  # def number_of_questions
  #   @total_questions = self.quiz.questions.size
  # end

  # def number_correct
  #   i = 0
  # 	self.quiz.questions.each do |question|
  #     question.answers.each do |answer|
  #       if self[:content] == answer.content && answer.is_correct == true
  #         i += 1
  #       end
  #     end
  # 	end
  #   return i
  # end
  
end

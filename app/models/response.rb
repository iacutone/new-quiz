# == Schema Information
#
# Table name: responses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  quiz_id    :integer
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ActiveRecord::Base
  attr_accessible :quiz_id, :content, :user_id

  belongs_to :user
  belongs_to :quiz

  def number_of_questions
    @total_questions = self.quiz.questions.size
  end


end

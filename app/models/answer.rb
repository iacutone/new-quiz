# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  content     :string(255)
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_correct  :boolean          default(FALSE)
#

class Answer < ActiveRecord::Base
  attr_accessible :content, :question_id, :is_correct
  belongs_to :question
end

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

require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
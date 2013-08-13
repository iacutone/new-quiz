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

require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

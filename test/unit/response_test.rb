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

require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  teacher         :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation, :student, :teacher, :responses_attributes

  has_many :responses
  has_many :quizzes, :through => :responses
end

class Result < ActiveRecord::Base
  attr_accessible :response_id, :content

  belongs_to :response
end

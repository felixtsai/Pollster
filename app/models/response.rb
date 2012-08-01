class Response < ActiveRecord::Base
  attr_accessible :question_id, :response
  
  belongs_to :question
end

class Answer < ActiveRecord::Base
  attr_accessible :answer, :poll_id, :question_id

  belongs_to :question

end

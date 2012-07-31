class Question < ActiveRecord::Base
  attr_accessible :poll_id, :question, :id

  belongs_to :poll

end

class Question < ActiveRecord::Base
  attr_accessible :poll_id, :question, :id

  belongs_to :poll
  has_many :answers
  has_many :responses

end

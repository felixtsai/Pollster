class Poll < ActiveRecord::Base
  attr_accessible :edit_url, :name, :poll_url, :id

  has_many :questions

  before_create :generate_edit_url   
    

  def generate_edit_url
    self.edit_url = SecureRandom.base64
  end

  def self.find(input)
    if input.to_i !=0
      super
    else
      find_by_edit_url(input)
    end #end if
  end #end find

end

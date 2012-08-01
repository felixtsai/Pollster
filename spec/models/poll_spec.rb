require 'spec_helper'

describe Poll do

  before :each do
    @poll = Poll.new
    @poll.save
  end #end before

  it "should generates a url slug exists when a poll is created" do
    @poll.edit_url.should_not == nil
  end

  it "should generate a url slug of at least 10 characters" do
    @poll.edit_url.length.should be > 18
  end


end #end Poll


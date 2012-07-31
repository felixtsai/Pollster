class PollsController < ApplicationController


  def index
    @polls = Poll.all
  end

  def create
    @poll = Poll.new(params[:poll])
    
    if @poll.save
      redirect_to poll_path(@poll.id), :notice => "Your url to edit this poll is polls/#{@poll.edit_url}"
    end
  end

  def new
    @poll = Poll.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll }
    end
  end

  def edit
  end

  def show
    @poll = Poll.find(params[:id])
    @question = Question.new
    @questions = Question.all

    respond_to do |format|
      format.html
      format.json { render json: @poll}
    end
  end

  def update
  end

  def destroy
  end
end

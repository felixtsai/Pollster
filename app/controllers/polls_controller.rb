class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.edit_url = @poll.generate_edit_url

    if @poll.save
      redirect_to poll_path(@poll.edit_url), :notice => "Your url to edit this poll is polls/#{@poll.edit_url}"
    end
  end

  def new
    @poll = Poll.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
    end
  end

  def edit
  end

  def show
    @poll = Poll.find_by_edit_url(params[:id])
  end

  def update
  end

  def destroy
  end
end

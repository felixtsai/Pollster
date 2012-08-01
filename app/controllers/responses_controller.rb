class ResponsesController < ApplicationController
  def show
  end

  def index
    @polls = Poll.all
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

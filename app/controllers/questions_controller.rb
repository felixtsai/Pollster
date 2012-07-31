class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    @question.poll_id = params[:poll_id]
    @question.save
    @poll = Poll.find(@question.poll.id)

    redirect_to poll_path(@poll.id)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(params[:questions])
    @poll = Poll.find(@question.poll.id)

    redirect_to poll_path(@poll.id)

  end

end #end QuestionsController
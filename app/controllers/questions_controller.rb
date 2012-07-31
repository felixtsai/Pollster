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
    @poll = Poll.find(params[:poll_id])
    @question = Question.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:poll_id])
    @question = Question.find(params[:id])

  respond_to do |format|
    if @question.update_attributes(params[:question])
        format.html {redirect_to @poll, notice: "Question was updated."}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end #end if
    end #end respond
  end #end update

  def destroy
    @poll = Poll.find(params[:poll_id])
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :no_content }
    end

  end

end #end QuestionsController
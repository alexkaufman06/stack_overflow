class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:success] = "Question Successfully Added!"
      redirect_to questions_path
    else
      flash[:danger] = "There was a problem creating your question, please try again."
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(params[:question])
      flash[:success] = "Question Successfully Updated!"
      redirect_to questions_path
    else
      flash[:danger] = "There was a problem updating your question, please try again."
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:danger] = "Post Successfully Deleted!"
    redirect_to questions_path
  end
end

class QuestionsController < ApplicationController

  def index
    @questions = Question.all.reverse
    @votes = Vote.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @user = User.find(current_user.id)
    @question = Question.new
  end

  def create
    @user = User.find(params[:user_id])
    @question = @user.questions.new(question_params)
    if @question.save
      respond_to do |format|
        format.html do
          flash[:success] = "Question Successfully Added!"
          redirect_to questions_path
        end
        format.js
      end
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
    if @question.update(question_params)
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
    flash[:danger] = "Question Successfully Deleted!"
    redirect_to questions_path
  end

private
  def question_params
    params.require(:question).permit(:title, :date, :question)
  end
end

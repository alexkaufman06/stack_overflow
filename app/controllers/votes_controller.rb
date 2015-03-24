class VotesController < ApplicationController

  def create
    user_id = current_user.id
    question_id = ??
    Question.find(question_id).votes += 1
    @vote =
    @user = User.find(params[:user_id])
    @question = @user.questions.new(question_params)
    if @question.save
      flash[:success] = "Question Successfully Added!"
      redirect_to questions_path
    else
      flash[:danger] = "There was a problem creating your question, please try again."
      render :new
    end
  end

# private
#   def question_params
#     params.require(:question).permit(:title, :date, :question)
#   end
end

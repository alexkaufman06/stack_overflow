class ResponsesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @response = @question.responses.new
  end

  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.new(response_params)
    if @response.save
      flash[:success] = "Reponse Successfully Added!"
      redirect_to question_path(@response.question)
    else
      flash[:danger] = "There was a problem adding your response, please try again."
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @response = @question.responses.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @response = Response.find(params[:id])
    if @response.update(response_params)
      flash[:success] = "Response Successfully Updated!"
      redirect_to question_path(@response.question)
    else
      flash[:danger] = "There was a problem updating your response, please try again."
      render :edit
    end
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    flash[:danger] = "Response Successfully Deleted!"
    redirect_to question_path(@response.question)
  end

private
  def response_params
    params.require(:response).permit(:date, :response)
  end
end

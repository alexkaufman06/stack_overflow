class VotesController < ApplicationController
  def create
    Vote.create(question_id: params[:question_id])
    redirect_to root_path
  end
end

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you"
    elsif @question == "I am going to work"
      @answer = "Great"
    elsif @question.ends_with? ("?")
      @answer = "I don't care, get dressed and go to work!"
    else
      @answer = "Get to work idiot"
    end
  end
end

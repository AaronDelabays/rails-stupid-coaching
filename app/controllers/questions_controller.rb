class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    if params[:question] == 'I am going to work'
      @answers = 'Great'
    elsif params[:question].include?('?')
      @answers = 'Silly question, get dressed and go to work!.'
    else
      @answers = 'I don\'t care, get dressed and go to work!'
    end
  end
end

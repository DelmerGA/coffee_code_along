class QuestionsController < ApplicationController
  def index
  	@questions = Question.all
  	@question = Question.new
  end

  def create
  	question = Question.create(params[:question])
  	question.answers.push Answer.all.sample

  	response = { question: question,
  							 answer: question.answers.last}

  	render json: response
  end

end

class AnswersController < ApplicationController
	def create
		question = Question.find(params[:answer][:question_id])
		session[:current_user_email] = answer_params[:email]
		answer = question.answers.create(answer_params)		
		MainMailer.notify_question_author(answer).deliver_later
		redirect_to question
	end

	private

	def answer_params		
		params.require(:answer).permit(:body, :email)
	end

	
end

require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do
  	question = Question.create email: 'author@quesetion.com', body: 'a test quesetion'
  	answer = Answer.create email: 'author@answer.com', body: 'a test answer'

  	question.answers << answer

    mail = MainMailer.notify_question_author(answer)
    assert_equal "New answer to your question", mail.subject
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

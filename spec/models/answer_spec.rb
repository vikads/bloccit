require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.new(title: "New Question Title", body: "New Question Body", resolved: false)}
  let(:answer) { Answer.new(body: "Answer Body", question: question) }

  it "should respond to body" do
    expect(answer).to respond_to(:body)
  end
end

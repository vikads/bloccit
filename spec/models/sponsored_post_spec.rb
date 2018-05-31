require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  #title:string, body:text, and price:integer
  #attributes and reference a Topic.

  let(:name) { RandomData.random_sentence }
  let(:description) { RandomData.random_paragraph }
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  #let(:price) { integer } #

  let(:topic) { Topic.create!(name: name, description: description) }

  let(:sponsored_post) { topic.sponsored_posts.create!(
    title: title, body: body, price: 100)}

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title, body and price attributes" do
      expect(sponsored_post).to have_attributes(
        title: title, body: body, price: 100)
    end
  end

end

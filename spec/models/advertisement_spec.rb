require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  ## title:string, body:text, price:integer.
  let(:advertisement) { Advertisement.create! }
  
  describe "attributes" do
    it "should respond to title" do
      expect(advertisement).to respond_to(:title)
    end

    it "should respond to body" do
      expect(advertisement).to respond_to(:body)
    end

    it "should respond to price" do
      expect(advertisement).to respond_to(:price)
    end
  end

  describe "GET index" do
     it "returns http success" do
       get :index
       expect(response).to have_http_status(:success)
     end
   end

   describe "GET show" do
     it "returns http success" do
       get :show
       expect(response).to have_http_status(:success)
     end
   end

   describe "GET new" do
     it "returns http success" do
       get :new
       expect(response).to have_http_status(:success)
     end
   end

   describe "GET create" do
     it "returns http success" do
       get :create
       expect(response).to have_http_status(:success)
     end
   end
end

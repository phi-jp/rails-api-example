require 'rails_helper'

RSpec.describe "Users", :type => :request do
  describe "GET /users", autodoc: true do
    it "works! (now write some real specs)" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /users", autodoc: true do
    it "ユーザーを作成" do
      # get users_path
      # expect(response).to have_http_status(200)
      user = {name:'test_user', email: 'test@example.com'}
      post users_path, user: user
      expect(response).to have_http_status(201)
    end
  end
end

require 'rails_helper'

describe UsersController, type: :request do
    describe "#index" do
        context "user exist" do
            let!(:users){create_list(:user, 3)}
            it "response success" do
                get "/users/edit"
                expect(response.status).to eq(302)
            end
        end
    end
end
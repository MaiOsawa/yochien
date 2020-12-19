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
    
    describe "#create" do
        context "create success" do
            it "response success" do
            post "/signup", params: { user: {name: "aaa"}}
            expect(response).to redirect_to schedules_path(User.last.id)
        end
            it "create success" do
                expect{
                    post "/signup", params: { user: {name: "aaa"}}
                }.to change(User, :count).by(0)
            end
        end    
    end  
    
    describe "#update" do
        context "update success" do
            let!(:user){create(:user, name: "before name")}
            it "response success" do
                patch "/users/#{user.id}", params: { user: {name: "after name"}}
                expect(User.last.name).to eq "after name"
            end
        end
    end    
end

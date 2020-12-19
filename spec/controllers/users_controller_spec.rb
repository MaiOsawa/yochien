require 'rails_helper'

describe UsersController, type: :request do
    describe "#new" do
        it "response success" do
            get "/signup"
            expect(response.status).to eq(200)
        end
    end    

    describe "#create" do
        it "create success" do
            expect{ post "/signup", params: {
                    user: {name: "aaa", email: "aa@example.com", password: "12345", password_confirmation: "12345"}
                }
            }.to change(User, :count).by(1)
        end
    end 
    
    describe "#edit" do
        context "no logged in" do
            let(:user){create(:user)}
            it "response success" do
                get "/users/edit"
                expect(response.status).to eq(302)  #失敗
            end
        end
        context "logged in" do
            let(:user){create(:user)}
            before 'UserIDをセッションから取り出せるようにする' do
              allow_any_instance_of(ActionDispatch::Request)
                .to receive(:session).and_return(user_id: user.id)
            end
            it "response success" do
                get "/users/edit"
                expect(response.status).to eq(200) #成功
            end
        end
    end
    
    # describe "#update" do
    #     context "update success" do
    #         let!(:user){create(:user, name: "before name")}
    #         it "response success" do
    #             patch "/users/#{user.id}", params: { user: {name: "after name"}}
    #             expect(User.last.name).to eq "after name"
    #         end
    #     end
    #end
end

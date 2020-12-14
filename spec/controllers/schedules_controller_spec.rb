require 'rails_helper'
RSpec.describe SchedulesController, type: :controller do
    describe 'GET #show' do
        it "assigns the requested schedule to @schedule"
        it "renders the :show template"
    end
        
    describe 'GET #show' do
        it "assigns the requested schedule to @schedule" do
            schedule = create(:schedule)
            get :show, id: schedule
            expect(assigns(:schedule)).to eq schedule
        end
            
        it "renders the :show template" do
            schedule = create(:schedule)
            get :show, id: schedule
            expect(response).to render_template :show
        end
    end
end
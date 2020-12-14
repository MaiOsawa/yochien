require 'rails_helper'
    
RSpec.describe Schedule, type: :model do
    describe "validations" do
        describe "#place" do
            it { is_expected.to validate_presence_of(:place) }
        end
    end
end
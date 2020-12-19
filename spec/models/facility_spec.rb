require 'rails_helper'
    
RSpec.describe Facility, type: :model do
    describe "validations" do
        describe "#name" do
            it { is_expected.to validate_presence_of(:name) }
        end
        describe "#address" do
            it { is_expected.to validate_presence_of(:address) }
        end
        describe "#tel" do
            it { is_expected.to validate_presence_of(:name) }
        end
        describe "#lunch" do
            it { is_expected.to allow_value(true).for(:lunch) }
            it { is_expected.to allow_value(false).for(:lunch) }
            it { is_expected.not_to allow_value(nil).for(:lunch) }        
        end
        describe "#pre" do
            it { is_expected.to allow_value(true).for(:pre) }
            it { is_expected.to allow_value(false).for(:pre) }
            it { is_expected.not_to allow_value(nil).for(:pre) }        
        end
    end
end
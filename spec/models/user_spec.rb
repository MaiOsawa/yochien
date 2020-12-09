require 'rails_helper'
    
RSpec.describe User, type: :model do
    describe "validations" do
        describe "#name" do
            it { is_expected.to validate_presence_of(:name) }
            it { is_expected.to validate_length_of(:name).is_at_most(20) }
        end
        describe "#email" do
            it { is_expected.to validate_presence_of(:email) }
            it { is_expected.to validate_uniqueness_of(:email) }
            it { is_expected.to validate_length_of(:email).is_at_most(40) }
        end
    end
end
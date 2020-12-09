require 'rails_helper'
    
RSpec.describe Schedule, type: :model do
    describe "validations" do
        describe "#year" do
            it { is_expected.to validate_presence_of(:year) }
            it { is_expected.to validate_numericality_of(:year).is_greater_than_or_equal_to(2020) }
        end
        describe "#month" do
            it { is_expected.to validate_presence_of(:month) }
            it { is_expected.to validate_numericality_of(:month).is_greater_than_or_equal_to(1) }
            it { is_expected.to validate_numericality_of(:month).is_less_than_or_equal_to(12) }
        end
        describe "#day" do
            it { is_expected.to validate_presence_of(:day) }
            it { is_expected.to validate_numericality_of(:day).is_greater_than_or_equal_to(1) }
            it { is_expected.to validate_numericality_of(:day).is_less_than_or_equal_to(31) }
        end
        describe "#place" do
            it { is_expected.to validate_presence_of(:place) }
        end
    end
end
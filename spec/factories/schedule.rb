FactoryBot.define do

    factory :schedule, class: Schedule do
        sequence(:title){|i| "schedule#{i}"}
    end

end
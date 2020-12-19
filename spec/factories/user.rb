FactoryBot.define do
    
    factory :user, class: User do
        sequence(:name){|i| "user#{i}"}
        sequence(:email){|i| "user#{i}@example.com"}
        sequence(:password){|i| "user#{i}"}
        sequence(:password_confirmation){|i| "user#{i}"}
    end

end
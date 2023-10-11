FactoryBot.define do

    factory :company do
        name { "MidTerm 2020 Company" }
    end

    factory :ice_factory do
        name { "Factory of Ice" }
        company
    end

    factory :camera do
        name { "Camera in factory" }
        ice_factory
    end

    factory :event do
        numberOfIceBlocks { 2 }
        camera
    end

    factory :user do
        email { "me@gmail.com" }
        password { "password" }
        password_confirmation { "password" }
        company
    end

end
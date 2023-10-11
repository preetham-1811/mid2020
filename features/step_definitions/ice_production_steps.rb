Given('I run a company that owns two factories with two cameras each') do
    @user = FactoryBot.create :user
    @company = FactoryBot.create(:company)
    2.times do
        FactoryBot.create :ice_factory, company: @company
    end
    @company.ice_factories.each do |f|
        2.times do
            FactoryBot.create :camera, ice_factory: f
        end
    end
end

Given('each camera has reported events today') do
  Camera.all.each do |c|
    3.times do
        FactoryBot.create :event, camera: c
    end
  end
end

Given('I am logged in') do
    visit new_user_session_url
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
end

When('I visit the {string} page') do |string|
  visit home_report_url
end

Then('I should see today\'s ice production') do
  expect(page).to have_content("DAILY")
end
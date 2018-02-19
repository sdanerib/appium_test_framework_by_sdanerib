### VERSION 1
Given(/^the user sees the login screen$/) do
  on_mobile_screen(LoginScreen).is_screen_loaded?.should be true
end

When(/^the '(.*)' user wants to login with password '(.*)'$/) do |user_name, pw|
  on_mobile_screen(LoginScreen).login_with(user_name, pw)
end

Then(/^he should be redirected to the Samples List screen$/) do
  on_mobile_screen(SamplesList).is_screen_loaded?.should be true
end
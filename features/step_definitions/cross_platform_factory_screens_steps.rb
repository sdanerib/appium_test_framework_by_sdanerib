### VERSION 2

Given(/^the user sees the login screen \(v2\)$/) do
  @login_screen= OnLoginScreenFactory.get_login_screen
  on_mobile_screen(@login_screen).is_screen_being_shown?.should be true
end

When(/^the '(.*)' user wants to login with password '(.*)' \(v2\)$/) do |user_name, pw|
  on_mobile_screen(@login_screen).logging_with(user_name, pw)
end

Then(/^he should be redirected to the Samples List screen \(v2\)$/) do
  @samples_screen= OnSamplesListFactory.get_samples_list_screen
  on_mobile_screen(@samples_screen).is_screen_being_shown?.should be true

end
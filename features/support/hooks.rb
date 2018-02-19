require 'appium_lib'

# ==================================================
# # # # # # # # # # MOBILE TESTS # # # # # # # # # #
# ==================================================

Before('@android_test, @ios_test') do |scenario|

  capabilities = Utilities::get_mobile_capabilities(scenario)
  @appium = Appium::Driver.new(capabilities, true)
  Appium.promote_appium_methods RSpec::Core::ExampleGroup
  @appium.start_driver

end

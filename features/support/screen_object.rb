require 'appium_lib'

class ScreenObject
  include Singleton

  def set_appium_driver(driver)
    @appium = driver
  end

  def self.mobile_elem(element_name, by, locator)

    define_method(element_name) do
      Appium::Common::Wait.new(:timeout => 20, :message => "Timeout waiting for #{element_name}").until {
        @appium.find_elements(by, locator).size > 0
      }
      @appium.find_element(by, locator)
    end
  end


  def self.cross_mobile_elem(element_name, by_ios, locator_ios, by_android, locator_android)
    platform = Utilities.get_platform_under_test
    (
      platform == 'ios'?
         (by = by_ios; locator = locator_ios) :
         (by = by_android; locator = locator_android)
    )
    mobile_elem(element_name, by, locator)
  end


end
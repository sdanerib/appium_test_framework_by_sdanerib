require 'appium_lib'

class IosSamplesList < ScreenObject

  mobile_elem(:title,          :xpath, "//XCUIElementTypeStaticText[@name='Samples List']")
  mobile_elem(:verticalsw_opt, :xpath, "//XCUIElementTypeStaticText[@name='Vertical swiping']")
  mobile_elem(:back_btn,       :xpath, "(//XCUIElementTypeOther[@name='Back'])[1]")


  def is_screen_being_shown?
    Selenium::WebDriver::Wait.new(:timeout => 30, :message => "#{self.class.name} didn't load successfully").until {
      title.displayed? and
          back_btn.displayed?
    }
  end

  def choose_vertical_swipe
    verticalsw_opt.click
  end


end
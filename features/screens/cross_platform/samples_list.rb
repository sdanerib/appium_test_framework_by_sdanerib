require 'appium_lib'

class SamplesList < ScreenObject

  cross_mobile_elem(:title,          :xpath, "//XCUIElementTypeStaticText[@name='Samples List']",     :xpath, "//android.widget.TextView[@text='Samples List']")
  cross_mobile_elem(:verticalsw_opt, :xpath, "//XCUIElementTypeStaticText[@name='Vertical swiping']", :xpath, "//android.widget.TextView[@content-desc='verticalSwipe']")
  cross_mobile_elem(:back_btn,       :xpath, "(//XCUIElementTypeOther[@name='Back'])[1]",             :xpath, "//android.widget.TextView[@text='Back']")


  def is_screen_loaded?
    Selenium::WebDriver::Wait.new(:timeout => 30, :message => "#{self.class.name} didn't load successfully").until {
      title.displayed? and
          back_btn.displayed?
    }
  end

  def choose_vertical_swipe
    verticalsw_opt.click
  end


end
require 'appium_lib'

class AndroidSamplesList < ScreenObject

  mobile_elem(:title,          :xpath, "//android.widget.TextView[@text='Samples List']")
  mobile_elem(:verticalsw_opt, :xpath, "//android.widget.TextView[@content-desc='verticalSwipe']")
  mobile_elem(:back_btn,       :xpath, "//android.widget.TextView[@text='Back']")


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
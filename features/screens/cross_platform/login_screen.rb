require 'appium_lib'

class LoginScreen < ScreenObject

  cross_mobile_elem(:login_title, :xpath,            "//XCUIElementTypeStaticText[@name='Login']",          :xpath, "//android.widget.TextView[@text='Login']")
  cross_mobile_elem(:username,    :accessibility_id, "username",                                            :xpath, "//android.widget.EditText[@content-desc='username']")
  cross_mobile_elem(:password,    :xpath,            "//XCUIElementTypeSecureTextField[@name='password']",  :xpath, "//android.widget.EditText[@content-desc='password']")
  cross_mobile_elem(:btn_login,   :xpath,            "//XCUIElementTypeOther[@name='login']",               :xpath, "//android.widget.TextView[@text='LOG IN']")


  def is_screen_loaded?
    Selenium::WebDriver::Wait.new(:timeout => 30, :message => "#{self.class.name} didn't load successfully").until {
      login_title.displayed?
    }
  end

  def set_username(user_name)
    username.clear
    username.send_keys(user_name)
  end

  def set_password(pw)
    password.send_keys(pw)
  end

  def login_with(user_name, pw)
    set_username(user_name)
    set_password(pw)
    btn_login.click
  end


end
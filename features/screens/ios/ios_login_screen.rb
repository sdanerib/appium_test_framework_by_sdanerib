require_rel '../screen_bases/base_login_screen.rb'

class IosLoginScreen < BaseLoginScreen

  mobile_elem(:login_title, :xpath,            "//XCUIElementTypeStaticText[@name='Login']")
  mobile_elem(:username,    :accessibility_id, "username")
  mobile_elem(:password,    :xpath,            "//XCUIElementTypeSecureTextField[@name='password']")
  mobile_elem(:btn_login,   :xpath,            "//XCUIElementTypeOther[@name='login']")

  def is_screen_being_shown?
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

  def logging_with(user_name, pw)
    set_username(user_name)
    set_password(pw)
    btn_login.click
  end


end
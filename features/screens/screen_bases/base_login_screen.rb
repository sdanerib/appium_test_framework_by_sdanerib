class BaseLoginScreen < ScreenObject

  def is_screen_being_shown?
    raise "abstract method #{__method__} must be defined"
  end

  def set_username(user_name)
    raise "abstract method #{__method__} must be defined"
  end

  def set_password(pw)
    raise "abstract method #{__method__} must be defined"
  end

  def logging_with(user_name, pw)
    raise "abstract method #{__method__} must be defined"
  end


end
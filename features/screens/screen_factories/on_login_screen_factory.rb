module OnLoginScreenFactory
  extend ScreenFactory

  def self.get_login_screen

  platform_to_exe = Utilities.get_platform_under_test

    case platform_to_exe.downcase.strip
      when 'android'
        return "#{AndroidLoginScreen}"

      when 'ios'
        return "#{IosLoginScreen}"

      else
        return "#{AndroidLoginScreen}"

    end
  end

end
World(OnLoginScreenFactory)
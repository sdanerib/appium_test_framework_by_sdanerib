module ScreenFactory

  def on_mobile_screen(mobile_screen)
    mobile_screen_instance = eval("#{mobile_screen.to_s}.instance")
    mobile_screen_instance.set_appium_driver(@appium)
    mobile_screen_instance
  end

  # def on_base_mobile_screen(mobile_screen)
  #
  #   platform = Utilities.get_platform_under_test
  #   platform = platform.to_s.capitalize
  #   mobile_screen_name = "#{platform}#{mobile_screen.to_s}"
  #
  #   mobile_screen_name = "#{mobile_screen.to_s}"
  #   on_mobile_screen(mobile_screen_name)
  # end

end
World(ScreenFactory)
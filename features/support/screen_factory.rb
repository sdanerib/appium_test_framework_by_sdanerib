module ScreenFactory

  def on_mobile_screen(mobile_screen)
    mobile_screen_instance = eval("#{mobile_screen.to_s}.instance")
    mobile_screen_instance.set_appium_driver(@appium)
    mobile_screen_instance
  end

end
World(ScreenFactory)
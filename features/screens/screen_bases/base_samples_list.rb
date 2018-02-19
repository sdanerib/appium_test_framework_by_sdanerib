class BaseSamplesList < ScreenObject

    def is_screen_loaded?
      raise "abstract method #{__method__} must be defined"
    end

    def choose_vertical_swipe(user_name)
      raise "abstract method #{__method__} must be defined"
    end

end
module OnSamplesListFactory
  extend ScreenFactory

  def self.get_samples_list_screen

    platform_to_exe = Utilities.get_platform_under_test

    case platform_to_exe.downcase.strip
      when 'android'
        return "#{AndroidSamplesList}"

      when 'ios'
        return "#{IosSamplesList}"

      else
        return "#{AndroidSamplesList}"
    end
  end

end
World(OnSamplesListFactory)



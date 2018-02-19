module Utilities

  PLATFORM_NAME = 0
  PLATFORM_VERSION = 1
  DEVICE_NAME = 2
  ENVIRONMENT = 3
  APPIUM_VERSION = 4


  def self.get_config_mobile_caps
    @mobile_caps = ENV['CAPABILITIES'].split('/')
  end

  def self.get_platform_under_test
    platform = get_config_mobile_caps[PLATFORM_NAME].downcase.strip
    platform
  end

  def self.get_test_app_path
    "#{(get_platform_under_test == 'ios' ? "#{Dir.pwd}#{FigNewton.ios_app}" : "#{Dir.pwd}#{FigNewton.android_app}")}"
  end

  def self.establish_env_to_exe(execute_on)
    server_url = (execute_on == 'local'? "#{FigNewton.walle_appium_url}" : "#{FigNewton.remote_appium_url}")
    return server_url
  end

  def self.get_mobile_capabilities(scenario_name)

    puts "ENV['CAPABILITIES']: #{ENV['CAPABILITIES']}"
    @mobile_caps = get_config_mobile_caps
    platform = get_platform_under_test
    plat_version = @mobile_caps[PLATFORM_VERSION]
    device_name = @mobile_caps[DEVICE_NAME].gsub('_', ' ')
    file_path = get_test_app_path

    appium_server_env = establish_env_to_exe(@mobile_caps[ENVIRONMENT].downcase.strip)


    desired_caps =
        {
            caps: {
                platformName: platform,
                platformVersion: plat_version,
                deviceName: device_name,
                app: file_path,
                name: scenario_name,
                connectHardwareKeyboard: false,
                noReset: true
            },
            appium_lib:
                {
                    server_url: appium_server_env
                }
        }

    return desired_caps
  end

end
World(Utilities)
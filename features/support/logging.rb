require 'logger'

module Logging

  def logger
    Logging.logger
  end

  def self.logger
    @logger ||= Logger.new(STDOUT)
    @logger.formatter = proc do |severity, datetime, progname, msg|
       "#{datetime} - [#{severity}] > Msg: #{msg}\n"
    end
    @logger
  end

end
World(Logging)
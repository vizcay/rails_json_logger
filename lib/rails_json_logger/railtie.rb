module RailsJsonLogger
  class Railtie < Rails::Railtie
    initializer 'rails_json_logger.initializer', group: :all do
      config = Rails.application.config

      config.rails_semantic_logger.add_file_appender = false
      config.semantic_logger.add_appender(file_name: "log/#{Rails.env}.json", formatter: RailsJsonLogger::Formatter.new)
    end
  end
end

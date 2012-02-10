require 'rails'

module Delayed
  class Railtie < Rails::Railtie
    initializer "delayed.rails_reloader" do
      Delayed::Worker.plugins << Delayed::RailsReloader::Plugin unless Rails.application.config.cache_classes
    end
  end
end
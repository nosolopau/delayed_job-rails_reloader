$LOAD_PATH.unshift 'lib'
require "delayed/rails_reloader/version"

Gem::Specification.new do |s|
  s.name              = "delayed_job-rails_reloader"
  s.version           = Delayed::RailsReloader::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Reload classes on each job run."
  s.homepage          = "http://github.com/Viximo/delayed_job-rails_reloader"
  s.email             = "viximo-ops@viximo.com"
  s.authors           = [ "Aaron Pfeifer", "Matt Griffin" ]
  s.license           = "MIT"
  s.has_rdoc          = false

  s.files             = %w( README.md LICENSE )
  s.files            += Dir.glob("lib/**/*")

  s.add_dependency    "delayed_job", "~>3.0.0"
  s.add_dependency    "rails",       "~>3.0"
  
  s.description       = <<desc
  Reload classes on each job run. This plugin assumes that you are running DelayedJob in a Rails environment.
desc
end

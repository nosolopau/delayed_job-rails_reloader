Delayed::RailsReloader
===

Reload your classes on each job run when running in development.

Installation:
---
In your Gemfile add `gem 'delayed_job-rails_reloader'`

Configuration:
---
RailsReloader will respect the value of `cache_classes` in your Rails environment, enabling reloading when caching is false.

Authors:
---
* Aaron Pfeifer (obrie)
* Matt Griffin (betamatt)

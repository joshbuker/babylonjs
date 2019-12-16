require 'simplecov'

SimpleCov.start do
  #####################
  ## Paths to ignore ##
  #####################
  add_filter '/bin/'
  add_filter '/config/'
  add_filter '/db/'
  add_filter '/lib/'
  add_filter '/log/'
  add_filter '/public/'
  add_filter '/storage/'
  add_filter '/tmp/'
  add_filter '/spec/'
  add_filter '/vendor/'

  ######################
  ## Folders to Group ##
  ######################
  add_group 'Channels',     'app/channels'
  add_group 'Controllers',  'app/controllers'
  add_group 'Helpers',      'app/helpers'
  add_group 'Javascript',   'app/javascript'
  add_group 'Jobs',         'app/jobs'
  add_group 'Mailers',      'app/mailers'
  add_group 'Models',       'app/models'
  add_group 'Policies',     'app/policies'
  add_group 'Validators',   'app/validators'

  ##########################
  ## Other Config Options ##
  ##########################
  track_files '{app}/**/*.{rb,erb,slim}'  # What file types to test
  SimpleCov.minimum_coverage 75           # Minimum coverage percentage
end

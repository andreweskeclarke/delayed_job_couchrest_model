require 'rubygems'
require 'bundler/setup'
require 'active_support/all'
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'delayed_job_couchrest_model'
require 'delayed/backend/shared_spec'

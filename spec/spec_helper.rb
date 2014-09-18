require 'rubygems'
require 'bundler/setup'
require 'active_support/all'
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'delayed_job_couchrest_model'
require 'delayed/backend/shared_spec'


class Story < CouchRest::Model::Base
  use_database :story
  property :text, String
  def tell
    text
  end

  def whatever(n, _)
    tell * n
  end
  def self.count; end

  handle_asynchronously :whatever
end

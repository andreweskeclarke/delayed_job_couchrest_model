require 'spec_helper'

class Story < CouchRest::Model::Base
  use_database :story
  property :text, String
  design

  def tell
    text
  end

  def whatever(n, _)
    tell * n
  end
  def self.count; end

  handle_asynchronously :whatever
end

describe Delayed::Backend::CouchrestModel::Job do
  it_behaves_like 'a delayed_job backend'
end

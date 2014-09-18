require 'spec_helper'

describe Delayed::Backend::CouchrestModel::Job do
  it_behaves_like 'a delayed_job backend'
end

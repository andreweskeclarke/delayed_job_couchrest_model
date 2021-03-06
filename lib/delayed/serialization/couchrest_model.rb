class CouchRest::Model::Base
  yaml_as "tag:ruby.yaml.org,2002:Couchdb"

  def reload
    job = self.class.get self['_id']
    job.each {|k,v| self[k] = v} unless job.nil?
  end
  def self.find(id)
    get id
  end
  def self.yaml_new(klass, tag, val)
    klass.get(val['_id'])
  end
end

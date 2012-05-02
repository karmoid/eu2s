class OpeKind < ActiveRecord::Base
  resourcify
  attr_accessible :info, :name
  has_many :operations
end

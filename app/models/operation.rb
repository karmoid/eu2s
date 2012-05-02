class Operation < ActiveRecord::Base
  resourcify
  belongs_to :ope_kind
  attr_accessible :info, :name, :num_version, :ope_kind_id
end

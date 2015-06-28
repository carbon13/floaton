class FloaterType < ActiveRecord::Base
  has_many :floaters

  default_scope { order(:id) }
end

class Xchange < ActiveRecord::Base
  scope :usdjpy, -> { where(pair_id: 'USDJPY') }
  scope :eurjpy, -> { where(pair_id: 'EURJPY') }
  scope :audjpy, -> { where(pair_id: 'AUDJPY') }
  scope :unique, -> { select(:pair_id).select(:name).distinct }

  def self.newest(pair_id)
    self.where(pair_id: pair_id).order('date desc, time desc').limit(1).first
  end

  default_scope { order('date, time') }
end

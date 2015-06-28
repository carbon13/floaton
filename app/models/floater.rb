class Floater < ActiveRecord::Base
  after_initialize :set_default_value

  belongs_to :floater_type

  scope :active, -> { where(active: true).newer }
  scope :inactive, -> { where(active: false).newer }
  scope :threshold, -> { where(floater_type_id: 1) }

  scope :newer, -> { order(updated_at: :desc) }
  scope :older, -> { order(updated_at: :asc) }

  private
    def set_default_value
      self.durability = 5
      self.active = true
    end 
end

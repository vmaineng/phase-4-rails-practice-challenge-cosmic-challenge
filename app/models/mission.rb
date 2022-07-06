class Mission < ApplicationRecord
  validates :name, presence: true
  validates :scientist, uniqueness: {scope: :name}

  belongs_to :scientist
  belongs_to :planet
end

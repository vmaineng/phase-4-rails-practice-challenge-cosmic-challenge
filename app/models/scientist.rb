class Scientist < ApplicationRecord
validates :name, :field_of_study, uniqueness: true

has_many :missions, dependent: :destroy
has_many :planets, through: :missions
end

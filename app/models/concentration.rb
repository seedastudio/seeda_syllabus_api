class Concentration < ApplicationRecord
  belongs_to :syllabus
  has_many :projects
  has_many :concentration_keywords
  has_many :keywords, through: :concentration_keywords
end

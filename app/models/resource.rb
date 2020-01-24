class Resource < ApplicationRecord
  has_many :syllabuses, through: :syllabus_resources
end

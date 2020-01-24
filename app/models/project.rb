class Project < ApplicationRecord
  belongs_to :concentration
  # eventually one project will have many concentrations — calling for a join table
end

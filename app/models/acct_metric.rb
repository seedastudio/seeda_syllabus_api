class AcctMetric < ApplicationRecord
  belongs_to :syllabus
  has_many :acct_measures
end

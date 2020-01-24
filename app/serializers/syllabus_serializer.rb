class SyllabusSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  belongs_to :user
  has_many :concentrations
  has_many :projects, through: :concentrations
  has_many :goals

  has_many :acct_partners
  has_many :acct_metrics

  # DEBUG: measures not seeding and can't be created in console
  has_many :acct_measures, through: :acct_metrics

  # must establish has many in both concentration and keyword models to access these associations
  # has_many :concentration_keywords, through: :concentrations
  has_many :keywords, through: :concentration_keywords

  # must declare has_many association in order to access has_many through
  # has_many :syllabus_resources
  has_many :resources, through: :syllabus_resources
end

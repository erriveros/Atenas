class Procedure < ApplicationRecord
  belongs_to :police_in_charge, class_name: 'PoliceMan'
  belongs_to :local_prosecution_in_charge, class_name: 'LocalProsecution'

  belongs_to :police_unit_in_charge, class_name: 'PoliceUnit'
  belongs_to :prosecutor_in_charge, class_name: 'Prosecutor'
  has_many :person_in_procedures
  has_many :people, :through => :person_in_procedures
  has_many :crime_in_accuseds
  has_many :crimes, :through => :crime_in_accuseds
  has_many :messages

  enum state: {pending: 0, acd: 1, noticed: 2}
  enum classification: {flagrancy: 0, pending_arrest_warrant: 1, both: 2}

  def state
    super.to_s.humanize
  end

  def classification
    super.to_s.humanize
  end

  def created_at_str
    I18n.locale = :es
    I18n.l(self.created_at, format: '%A, %d de %B de %Y a las %H:%M')
  end

  def date_str
    I18n.locale = :es
    I18n.l(self.date_of_arrest, format: '%A, %d de %B de %Y a las %H:%M')
  end
  has_many :taggings
  has_many :tags, through: :taggings
end

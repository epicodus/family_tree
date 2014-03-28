class Person < ActiveRecord::Base
  validates :name, :presence => true

  after_save :make_marriage_reciprocal

private

  def make_marriage_reciprocal
    if spouse_id_changed?
      spouse = Person.find(spouse_id)
      spouse.update(:spouse_id => id)
    end
  end
end

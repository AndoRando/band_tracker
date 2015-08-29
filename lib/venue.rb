class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)

  validates(:name, {:presence => true, :length => { :maximum => 50 }})

  def name=(s)
    write_attribute(:name, s.to_s.titleize)
  end
end

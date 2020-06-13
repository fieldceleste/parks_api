class Park < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates_length_of :description, minimum: 50, maximum: 250
  validates :state, presence: true
  validates :established, presence: true
  before_save(:titleize_park)

  pg_search_scope :search_by_term, against: [:name, :state, :established],
    using: {
      tsearch: {
        any_word: true,
          prefix: true
         }
       } 
    

  private 
    def titleize_park
      self.name = self.name.titleize
    end 
end
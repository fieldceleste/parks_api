class Park < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates_length_of :description, minimum: 50, maximum: 250
  validates :state, presence: true
  validates :established, presence: true
  before_save(:titleize_park)
  # paginates_per 10

  pg_search_scope :search_by_term, against: [:name, :state, :established, :national],
    using: {
      tsearch: {
        any_word: true,
          prefix: true
         }
       } 
    default_scope { order(state: :asc)}
      

  private 
    def titleize_park
      self.name = self.name.titleize
    end 
end
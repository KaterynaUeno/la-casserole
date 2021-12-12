class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :speciality, presence: true
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def full_name
    "#{user.first_name.capitalize} #{user.last_name.capitalize}"
  end

  include PgSearch::Model
  pg_search_scope :search_by_speciality_and_experience,
    against: [ :speciality, :experience ],
    using: {
      tsearch: { prefix: true }
  }
end

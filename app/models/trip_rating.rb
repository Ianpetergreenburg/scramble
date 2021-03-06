class TripRating < ApplicationRecord

  belongs_to :user
  belongs_to :trip

  validates_presence_of :user_id, :trip_id, :rating
  validates_uniqueness_of :user_id, scope: :trip_id
end

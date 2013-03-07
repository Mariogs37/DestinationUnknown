# == Schema Information
#
# Table name: destinations
#
#  id           :integer          not null, primary key
#  address      :string(255)
#  itinerary_id :integer
#  latitude     :float
#  longitude    :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Destination < ActiveRecord::Base
  attr_accessible :address, :itinerary_id
  belongs_to :itinerary

  before_save :geocode
  private
  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end
end

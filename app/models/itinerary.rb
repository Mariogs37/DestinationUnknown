# == Schema Information
#
# Table name: itineraries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Itinerary < ActiveRecord::Base
  attr_accessible :name, :user_id, :start_date
  belongs_to :user
  has_many :destinations

end

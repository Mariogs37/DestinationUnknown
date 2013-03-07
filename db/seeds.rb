User.delete_all
Itinerary.delete_all
Destination.delete_all

u1 = User.create(:name => 'Ben', :email => 'ben@gmail.com', :password => 'a', :password_confirmation => 'a', :home_address => '234 East 5th Street, New York, NY 10003')
u2 = User.create(:name => 'Sam', :email => 'sam@gmail.com', :password => 'a', :password_confirmation => 'a', :home_address => '400 East 1st Street, New York, NY 10003')
u3 = User.create(:name => 'Josh', :email => 'josh@gmail.com', :password => 'a', :password_confirmation => 'a', :home_address => '20 Bayberry Lane, Gloucester, MA 01930')

i1 = Itinerary.create(:name => 'Spring Break', :start_date => '9/18/2014')
i2 = Itinerary.create(:name => 'Winter Break', :start_date => '1/11/2018')
i3 = Itinerary.create(:name => 'Summer Vacay', :start_date => '6/1/2015')

d1 = Destination.create(:address => '345 University Avenue, Palo Alto, CA')
d2 = Destination.create(:address => '600 W College Avenue, Tallahassee, FL')
d3 = Destination.create(:address => '200 Main Street, Groton, MA')

u1.itineraries << i1
u1.save

u2.itineraries << i2
u2.save

u3.itineraries << i3
u3.save

i1.destinations = [d1, d2, d3]
i2.destinations = [d1, d2]
i3.destinations = [d2, d3]
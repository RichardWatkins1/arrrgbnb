class Property

  include DataMapper::Resource
  has n, :bookings, through: Resource
  has n, :users, through: Resource

  property :id, Serial
  property :title, String, required: true
  property :property_type, String, required: true
  property :location, String, required: true
  property :bedrooms, Integer, required: true
  property :sleeps, Integer, required: true
  property :photo, String, required: true
  property :price, Float, required: true
  property :date_available_to, Date, required: true
  property :date_available_from, Date, required: true
  property :booked_dates, Text
end

class Booking

include DataMapper::Resource

has n, :users, through: Resource
has n, :properties, through: Resource

    property :id, Serial
    property :pending, Boolean
    property :approved, Boolean
    property :confirmed, Boolean
    property :rejected, Boolean
    property :cancelled, Boolean
    property :completed, Boolean
    property :date, Date

end

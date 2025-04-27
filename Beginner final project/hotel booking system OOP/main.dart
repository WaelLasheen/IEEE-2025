import 'hotel.dart';
import 'room.dart';
import 'customer.dart';
import 'room_type_enum.dart';

void main() {
  final hotel = Hotel(
    hotelId: 1,
    name: "Grand Hotel",
    location: "Downtown",
    rating: 4.5,
  );

  final room = Room(
    roomNumber: "101",
    type: RoomType.double,
    pricePerNight: 150.0,
  );

  hotel.addRoom(room);

  final customer = Customer(
    customerId: 1,
    firstName: "John",
    lastName: "Doe",
    email: "john.doe@example.com",
    phone: "+1234567890",
  );

  final checkIn = DateTime.now().add(Duration(days: 1));
  final checkOut = DateTime.now().add(Duration(days: 3));

  hotel.makeBooking(customer, room, checkIn, checkOut);
  print('-' * 25);
  hotel.makeBooking(customer, room, checkIn, checkOut);
}

import 'booking.dart';
import 'customer.dart';
import 'room.dart';

class Hotel {
  final int hotelId;
  final String name;
  final String location;
  final double rating;
  final List<Room> _rooms = [];
  final List<Booking> _bookings = [];

  Hotel({
    required this.hotelId,
    required this.name,
    required this.location,
    required this.rating,
  });

  void addRoom(Room room) {
    _rooms.add(room);
  }

  List<Room> getAvailableRooms(DateTime checkIn, DateTime checkOut) {
    return _rooms
        .where((room) => room.checkAvailability(checkIn, checkOut))
        .toList();
  }

  void getHotelDetails() {
    print('''
          Hotel ID: $hotelId
          Name: $name
          Location: $location
          Rating: $rating
          Total Rooms: ${_rooms.length}
      ''');
  }

  void makeBooking(
      Customer customer, Room room, DateTime checkIn, DateTime checkOut) {
    if (room.bookRoom(checkIn, checkOut)) {
      Booking booking = Booking(
        customer: customer,
        room: room,
        checkInDate: checkIn,
        checkOutDate: checkOut,
      );

      _addBooking(booking);
      room.bookRoom(checkIn, checkOut);
      print('Booking process success');
      booking.bookingDetails();
      room.getRoomDetails();
    } else {
      print('Booking process fails');
    }
  }

  void _addBooking(Booking booking) {
    _bookings.add(booking);
  }
}

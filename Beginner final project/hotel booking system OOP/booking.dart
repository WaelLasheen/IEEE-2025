import 'customer.dart';
import 'room.dart';

class Booking {
  static int bookingId = 0;
  final Customer customer;
  final Room room;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  double totalPrice = 0;

  Booking({
    required this.customer,
    required this.room,
    required this.checkInDate,
    required this.checkOutDate,
  }) {
    totalPrice =
        _calculateTotalPrice(checkInDate, checkOutDate, room.pricePerNight);
    bookingId++;
  }

  static double _calculateTotalPrice(
      DateTime checkIn, DateTime checkOut, double pricePerNight) {
    final days = checkOut.difference(checkIn).inDays;
    return days * pricePerNight;
  }


  void bookingDetails() {
    print('''
      Booking ID: $bookingId
      Customer: ${customer.firstName} ${customer.lastName}
      Email: ${customer.email}
      Room Number: ${room.roomNumber}
      Room Type: ${room.type}
      Check-in Date: ${checkInDate.toIso8601String().split('T')[0]}
      Check-out Date: ${checkOutDate.toIso8601String().split('T')[0]}
      Total Price: \$${totalPrice.toStringAsFixed(2)}
  ''');
  }
}

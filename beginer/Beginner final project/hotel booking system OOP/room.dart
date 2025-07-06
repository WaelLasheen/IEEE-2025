import 'room_type_enum.dart';

class Room {
  static int roomId = 0;
  final String roomNumber;
  final RoomType type;
  final double pricePerNight;
  List<List<DateTime>> _bookFromTo = [];

  Room({
    required this.roomNumber,
    required this.type,
    required this.pricePerNight,
  }) {
    roomId++;
  }

  bool checkAvailability(DateTime checkIn, DateTime checkOut) {
    bool isAvailable = true;

    // من الاخر لو الحجز بداء و انتهي قبل اللي متسجل او بداء بعد اللي متسجل فالدنيا تمام
    // غير كدة مش تمام
    // علشان كدة عملين ! للشرط الصح لان احتمالات الشرط الغلط كتير

    for (int i = 0; i < _bookFromTo.length; i++) {
      if (!(checkIn.isBefore(_bookFromTo[i][0]) &&
              checkOut.isBefore(_bookFromTo[i][1]) ||
          checkIn.isAfter(_bookFromTo[i][1]))) {
        isAvailable = false;
        break;
      }
    }
    return isAvailable;
  }

  bool bookRoom(DateTime checkIn, DateTime checkOut) {
    if (checkAvailability(checkIn, checkOut)) {
      _bookFromTo.add([checkIn, checkOut]);
      print('Room has booked successfully');
      return true;
    }
    print('Room had booked before');
    return false;
  }

  void getRoomDetails() {
    print('''
        Room ID: $roomId
        Room Number: $roomNumber
        Type: $type
        Price per Night: \$${pricePerNight.toStringAsFixed(2)}
      ''');
  }
}

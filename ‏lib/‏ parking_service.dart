// lib/services/parking_service.dart
class ParkingService {
  // وظيفة حجز الموقف
  Future<bool> reserveSlot(String slotId, String userId) async {
    try {
      // هنا يوضع كود الربط مع Firebase Database
      print('Reserving slot $slotId for user $userId');
      return true; // نجاح العملية
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }
}


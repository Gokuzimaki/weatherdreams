import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude = 0.0;
  double _longitude = 0.0;
  Location() {
    //getCurrentLocation();
  }
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      _longitude = position.longitude;
      _latitude = position.latitude;
      // print('The current position is: ${position.toString()}');
    } catch (e) {
      print('Error, Could Not get Location details: ${e.toString()}');
    }
  }

  Map getLatLong() {
    return {
      "Long": _latitude,
      "Lat": _longitude,
    };
  }
}

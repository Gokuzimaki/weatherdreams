import 'package:flutter/material.dart';
import 'package:weather_dreams/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  /// Retrieves the current location of the user's device
  void getLocation() async {
    Location locationData = Location();
    await locationData.getCurrentLocation();
    // once location is obtained, retrieve data from openweather maps
    // print(
    //     'Latitude: ${locationData.getLatLong()['Lat']}, and Longitude: ${locationData.getLatLong()['Long']}');
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

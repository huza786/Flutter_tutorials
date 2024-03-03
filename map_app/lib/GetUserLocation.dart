import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetUserLocation extends StatefulWidget {
  const GetUserLocation({super.key});

  @override
  State<GetUserLocation> createState() => _GetUserLocationState();
}

class _GetUserLocationState extends State<GetUserLocation> {
  Future<Position> GetUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print('error' + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  static CameraPosition _kGooglePlex =
      const CameraPosition(target: LatLng(25.10128, 67.09394), zoom: 14.4746);
  List<Marker> Markers = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(25.10128, 67.09394),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    String stadd = '';
    Completer<GoogleMapController> _completer = Completer();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        markers: Set<Marker>.of(Markers),
        onMapCreated: (GoogleMapController controller) {
          _completer.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GetUserCurrentLocation().then(
            (value) async {
              Markers.add(
                Marker(
                    markerId: MarkerId('2'),
                    position: LatLng(value.latitude, value.longitude),
                    infoWindow: InfoWindow(
                        title: 'My Current location',
                        snippet: 'My Current location')),
              );
              CameraPosition cameraPosition = CameraPosition(
                  target: LatLng(value.latitude, value.longitude), zoom: 14);
              GoogleMapController googleMapController = await _completer.future;
              googleMapController.animateCamera(
                  CameraUpdate.newCameraPosition(cameraPosition));
              List<Placemark> placemarks =
                  await placemarkFromCoordinates(52.2165157, 6.9437819);
              stadd = placemarks.reversed.last.country.toString();
              setState(() {});
            },
          );
        },
        child: Icon(Icons.local_activity_sharp),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> _completer = Completer();
  static final CameraPosition _kGooglePlex = const CameraPosition(
      target: LatLng(30.191169212772543, 71.48112494232794), zoom: 14.4746);
  List<Marker> _marker = [];
  List<Marker> _list = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(34.0522, -118.2437),
      infoWindow: InfoWindow(title: 'Los Angeles'),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(37.42796133580664, -122.085749655962),
      infoWindow: InfoWindow(title: 'San Francisco'),
    ),
    Marker(
      markerId: MarkerId('3'),
      position: LatLng(32.7157, -117.1611),
      infoWindow: InfoWindow(title: 'San Diego'),
    ),
    Marker(
      markerId: MarkerId('4'),
      position: LatLng(38.5758, -121.4783),
      infoWindow: InfoWindow(title: 'Sacramento'),
    ),
    Marker(
      markerId: MarkerId('5'),
      position: LatLng(37.8651, -119.5383),
      infoWindow: InfoWindow(title: 'Yosemite National Park'),
    ),
    Marker(
      markerId: MarkerId('6'),
      position: LatLng(39.0968, -120.0324),
      infoWindow: InfoWindow(title: 'Lake Tahoe'),
    ),
    Marker(
      markerId: MarkerId('7'),
      position: LatLng(30.191169212772543, 71.48112494232794),
      infoWindow: InfoWindow(title: 'My current location'),
    ),
    Marker(
      markerId: MarkerId('8'),
      position: LatLng(36.5054, -117.0794),
      infoWindow: InfoWindow(title: 'Death Valley National Park'),
    ),
    Marker(
      markerId: MarkerId('9'),
      position: LatLng(36.3615, -121.8563),
      infoWindow: InfoWindow(title: 'Big Sur'),
    ),
    Marker(
      markerId: MarkerId('10'),
      position: LatLng(38.5025, -122.2654),
      infoWindow: InfoWindow(title: 'Napa Valley'),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        markers: Set<Marker>.of(_marker),
        onMapCreated: (GoogleMapController controller) {
          _completer.complete(controller);
        },
        myLocationEnabled: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_circle),
          onPressed: () async {
            GoogleMapController _controller = await _completer.future;
            _controller.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                    target: LatLng(30.191169212772543, 71.48112494232794),
                    zoom: 14),
              ),
            );
            setState(() {});
          }),
    );
  }
}

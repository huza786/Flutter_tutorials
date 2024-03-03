import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class LatlngToAddress extends StatefulWidget {
  const LatlngToAddress({super.key});

  @override
  State<LatlngToAddress> createState() => _LatlngToAddressState();
}

class _LatlngToAddressState extends State<LatlngToAddress> {
  String stAdd = '';
  String stlnglat = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(stAdd),
            Text(stlnglat),
            Center(
              child: GestureDetector(
                child: Container(
                  height: 50,
                  width: 200,
                  child: Center(child: Text('Click to change')),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                onTap: () async {
                  List<Location> locations =
                      await locationFromAddress("Gronausestraat 710, Enschede");
                  stlnglat = locations.last.latitude.toString() +
                      ' , ' +
                      locations.last.longitude.toString();

                  List<Placemark> placemarks =
                      await placemarkFromCoordinates(52.2165157, 6.9437819);
                  stAdd = placemarks.reversed.last.country.toString();

                  setState(() {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

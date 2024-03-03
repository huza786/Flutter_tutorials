import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class GoogleSearchPlacesAPI extends StatefulWidget {
  const GoogleSearchPlacesAPI({super.key});

  @override
  State<GoogleSearchPlacesAPI> createState() => _GoogleSearchPlacesAPIState();
}

class _GoogleSearchPlacesAPIState extends State<GoogleSearchPlacesAPI> {
  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();
    String SessionToken = '';
    List<dynamic> PlaceList = [];

    //text editing controller to save the places in search
    TextEditingController controller = TextEditingController();
    //initial position of camera
    final CameraPosition _kGooglePlex = const CameraPosition(
        target: LatLng(30.191169212772543, 71.48112494232794), zoom: 14.4746);
    Completer<GoogleMapController> completer = Completer();
    getSuggestion(String input) async {
      String kPLACES_API_KEY = "AIzaSyCGRNZgxuiT27FCmCCg0Y9Go1kvTvLWIvk";
      String baseURL =
          'https://maps.googleapis.com/maps/api/place/autocomplete/json';
      String request =
          '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$SessionToken';
      var response = await http.get(Uri.parse(request));
      var data = response.body;
      print(data);
      if (response.statusCode == 200) {
        setState(() {
          PlaceList = jsonDecode(response.body.toString())['predictions'];
        });
      } else {
        throw Exception('Error to load');
      }
    }

    onChange() {
      if (SessionToken == '') {
        setState(() {
          SessionToken = uuid.v4();
        });
      } else {
        getSuggestion(controller.text);
      }
    }

    @override
    void initState() {
      super.initState();
      controller.addListener(() {
        onChange();
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text('Google map search')),
      body: Column(
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: 'Search Places', fillColor: Colors.grey),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                itemCount: PlaceList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      title: Text(PlaceList[index]['descriptions']),
                    ),
                  );
                },
              ),
            ),
          ),
          // GoogleMap(
          //   initialCameraPosition: _kGooglePlex,
          //   onMapCreated: (GoogleMapController controller) {
          //     completer.complete(controller);
          //   },
          // ),
        ],
      ),
    );
  }
}

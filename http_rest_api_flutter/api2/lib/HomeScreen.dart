import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
 const HomeScreen({super.key});
}

class _HomeScreenState extends State<HomeScreen> {
  List<Photos> photoslist = [];

  Future<List<Photos>> getphotos() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    );
    var data = jsonDecode(
      response.body.toString(),
    );
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photo = Photos(
            albumId: i['albumId'],
            id: i['id'],
            title: i['title'],
            thumbnailUrl: i['thumbnailUrl'],
            url: i['url']);
        photoslist.add(photo);
      }
      return photoslist;
    } else {
      return photoslist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getphotos(),
              builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
                return ListView.builder(
                  itemCount: photoslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(snapshot.data![index].url),
                      ),
                      title:
                          Text('Data: ' + snapshot.data![index].id.toString()),
                      subtitle: Text(snapshot.data![index].title),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Photos {
  int albumId, id;
  String title, url, thumbnailUrl;
  Photos(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.thumbnailUrl,
      required this.url});
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersNoModels extends StatefulWidget {
  const UsersNoModels({super.key});

  @override
  State<UsersNoModels> createState() => _UsersNoModelsState();
}

var data;

class _UsersNoModelsState extends State<UsersNoModels> {
  Future<void> getUserapi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getUserapi(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                children: [
                                  ReuseableRow(
                                      title: 'name',
                                      value: data[index]['name'].toString()),
                                  ReuseableRow(
                                      title: 'Username',
                                      value:
                                          data[index]['username'].toString()),
                                  ReuseableRow(
                                      title: 'email',
                                      value: data[index]['email'].toString())
                                ],
                              ),
                            );
                          });
                    }
                  }))
        ],
      ),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  final String title, value;
  const ReuseableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), Text(value)],
    );
  }
}

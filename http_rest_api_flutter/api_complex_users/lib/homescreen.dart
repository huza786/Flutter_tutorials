import 'dart:convert';

import 'package:api_complex_users/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UsersModels> usersmodel = [];
  Future<List<UsersModels>> getusersapi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        usersmodel.add(UsersModels.fromJson(i as Map<String, dynamic>));
      }
      return usersmodel;
    } else {
      return usersmodel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getusersapi(),
                  builder:
                      (context, AsyncSnapshot<List<UsersModels>> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: Text('Loading'),
                      );
                    } else {
                      return ListView.builder(itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ReuseableRow(
                                    title: 'Name ',
                                    value:
                                        snapshot.data![index].name.toString()),
                                ReuseableRow(
                                    title: 'Email ',
                                    value:
                                        snapshot.data![index].email.toString()),
                                ReuseableRow(
                                    title: 'Username ',
                                    value: snapshot.data![index].username
                                        .toString()),
                                ReuseableRow(
                                    title: 'City ',
                                    value: snapshot.data![index].address!.city
                                        .toString())
                              ],
                            ),
                          ),
                        );
                      });
                    }
                  })),
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

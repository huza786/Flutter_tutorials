import 'dart:convert';

import 'package:api_complex_users/customproduct.dart';
import 'package:api_complex_users/fakeproductsmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FakeProducts extends StatefulWidget {
  const FakeProducts({super.key});

  @override
  State<FakeProducts> createState() => _FakeProductsState();
}

class _FakeProductsState extends State<FakeProducts> {
  List<FakeProductsModel> fakeproducts = [];

  Future<List<FakeProductsModel>> getproductapi() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        fakeproducts.add(FakeProductsModel.fromJson(i as Map<String, dynamic>));
      }
      return fakeproducts;
    } else {
      return fakeproducts;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getproductapi(),
                  builder: (context,
                      AsyncSnapshot<List<FakeProductsModel>> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.amberAccent,
                        ),
                      );
                    } else {
                      return ListView.builder(
                          itemCount: fakeproducts.length,
                          itemBuilder: (context, index) {
                            return CustomProduct(
                                name: snapshot.data![index].title.toString(),
                                price: snapshot.data![index].price!.toDouble(),
                                url: snapshot.data![index].image.toString());
                          });
                    }
                  }))
        ],
      ),
    );
  }
}

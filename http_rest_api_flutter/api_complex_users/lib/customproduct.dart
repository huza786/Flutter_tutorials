import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  final String url, name;
  final double price;
  const CustomProduct(
      {super.key, required this.name, required this.price, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            SizedBox(
              width: 1000,
              height: 500,
              child: Image.network(url),
            ),
            Row(
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              price.toString(),
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

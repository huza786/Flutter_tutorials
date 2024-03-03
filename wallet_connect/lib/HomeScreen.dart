// MainScreen.dart
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:wallet_connect/Services.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connect with Trust Wallet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            connectWithTrustWallet(context);
          },
          child: Text('Connect with Trust Wallet'),
        ),
      ),
    );
  }
}

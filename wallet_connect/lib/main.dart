// main.dart

import 'package:flutter/material.dart';
import 'package:wallet_connect/HomeScreen.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

final connector = WalletConnect(
  bridge: 'https://bridge.walletconnect.org',
  clientMeta: PeerMeta(
    name: 'Your App Name',
    description: 'Your App Description',
    url: 'Your App URL',
    icons: ['Your App Icon URL'],
  ),
);

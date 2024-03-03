import 'package:flutter/material.dart';
import 'package:wallet_connect/DataScreen.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> connectWithTrustWallet(BuildContext context) async {
  if (!connector.connected) {
    final session = await connector.createSession(
      chainId: 1,
      onDisplayUri: (uri) async {
        if (await canLaunchUrl(Uri.parse(uri))) {
          await launchUrl(Uri.parse(uri));
        }
      },
    );

    connector.on('connect', (session) {
      // Handle connection success
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => TrustWalletDataScreen()));
    });

    connector.on('disconnect', (session) {
      // Handle disconnection, e.g., return to the previous screen
      Navigator.pop(context);
    });
  }
}

final connector = WalletConnect(
  bridge: 'https://bridge.walletconnect.org',
  clientMeta: PeerMeta(
    name: 'WalletConnect',
    description: 'WalletConnect Developer App',
    url: 'https://walletconnect.org',
    icons: [
      'https://gblobscdn.gitbook.com/spaces%2F-LJJeCjcLrr53DcT1Ml7%2Favatar.png?alt=media'
    ],
  ),
);

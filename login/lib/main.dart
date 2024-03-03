import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/Login_ui.dart';
import 'package:login/authentication_service.dart';
import 'package:login/home_page.dart';
import 'package:provider/provider.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

 await Firebase.initializeApp;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Authentication_service>(
          create: (_) => Authentication_service(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<Authentication_service>().AuthStatechanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        home: const LoginUi(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final firebase_user = context.watch<User>();
    if (firebase_user != null) {
      return MyHomePage();
    }
    return LoginUi();
  }
}

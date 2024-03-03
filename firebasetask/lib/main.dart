import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasetask/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebasetask/Login_ui.dart';
import 'package:firebasetask/authentication_service.dart';
import 'package:firebasetask/home_page.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance))
      ],
      child: const MaterialApp(
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthenticationService(FirebaseAuth.instance).authStatechanges,
      initialData: null,
      catchError: (context, error) => null,
      child: Consumer<User?>(
        builder: (context, user, child) {
          print(user);
          if (user != null) {
            return MyHomePage();
          }
          return const LoginUi();
        },
      ),
    );
    //   final firebaseUser = context.watch<User?>();
    //   if (firebaseUser != null) {
    //     return MyHomePage();
    //   }
    //   return const LoginUi();
  }
}

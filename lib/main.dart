import 'package:ThiaoNaiDee/pages/fast.dart';
import 'package:ThiaoNaiDee/pages/faverite.dart';
import 'package:ThiaoNaiDee/pages/forgot.dart';
import 'package:ThiaoNaiDee/pages/home.dart';
import 'package:ThiaoNaiDee/pages/login.dart';
import 'package:ThiaoNaiDee/pages/make.dart';
import 'package:ThiaoNaiDee/pages/register.dart';
import 'package:ThiaoNaiDee/pages/social.dart';
import 'package:ThiaoNaiDee/pages/trip.dart';
import 'package:ThiaoNaiDee/pages/user.dart';
import 'package:ThiaoNaiDee/pages/map.dart';
import 'package:ThiaoNaiDee/pages/authentication.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Authentication>(
          create: (_) => Authentication(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<Authentication>().authStateChanges,
        )
      ],
      child: MaterialApp(
        home: AuthenticationWrapper(),
        title: 'ThiaoNaiDee',
        routes: {
          '/home-page': (context) => HomePage(),
          '/register-page': (context) => RegisterPage(),
          '/forgot-page': (context) => ForgotPage(),
          '/make-page': (context) => MakePage(),
          '/social-page': (context) => SocialPage(),
          '/trip-page': (context) => TripPage(),
          '/user-page': (context) => UserPage(),
          '/faverite-page': (context) => FaveritePage(),
          '/login-page': (context) => LoginPage(),
          '/fast-page': (context) => FastPage(),
          '/map-page': (context) => MyMap(),
          '/aut-page': (context) => AuthenticationWrapper(),
        },
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return HomePage();
    }
    return LoginPage();
  }
}
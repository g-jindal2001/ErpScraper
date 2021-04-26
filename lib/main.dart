import 'package:erp_scraper/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './providers/auth.dart';

import './screens/auth_screen.dart';
import './screens/home_screen.dart';

Future<void> main() async {//just to check whether the device contains the SharedPreference string or not
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('userData');
  print(email);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        )
      ],
      child: Consumer<Auth>(
        builder: (context, authData, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            canvasColor: Color(0xFFF5F5F5),
            accentColor: Colors.white70,
          ),
          home: authData.isAuth
              ? HomeScreen()
              : FutureBuilder(
                  future: authData.tryAutoLogin(),
                  builder: (ctx, snapshot) =>
                      snapshot.connectionState == ConnectionState.waiting
                          ? SplashScreen()
                          : AuthScreen(),
                ),
        ),
      ),
    );
  }
}

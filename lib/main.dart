import 'package:flutter/material.dart';
import './pages/routers.dart';
import 'Provide/auth.dart';
import 'package:provide/provide.dart';


void main() {
  var auth = Auth();

  var providers = Providers();
  providers..provide(Provider<Auth>.value(auth));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

class MyApp extends StatelessWidget {
  Color _themeColor = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: _themeColor,
        accentColor: _themeColor,
        indicatorColor: Colors.white,
      ),
      // home: new MusicPlayerExample(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

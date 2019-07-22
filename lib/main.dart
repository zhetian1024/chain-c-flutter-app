import 'package:flutter/material.dart';
import './pages/routers.dart';
import 'Provide/auth.dart';
import 'package:provide/provide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluintl/fluintl.dart';
import 'res/language.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  var auth = Auth();
  var providers = Providers();
  providers..provide(Provider<Auth>.value(auth));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  Locale _locale;
  Color _themeColor = Colors.pink;
  void initState() {
    super.initState();
//    setLocalizedSimpleValues(localizedSimpleValues);//配置简单多语言资源
    setLocalizedValues(localizedValues); //配置多语言资源
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: _themeColor,
        accentColor: _themeColor,
        indicatorColor: Colors.white,
      ),
      locale: new Locale('en','us'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        CustomLocalizations.delegate //设置本地化代理
      ],
      supportedLocales: CustomLocalizations.supportedLocales,
      // home: new MusicPlayerExample(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

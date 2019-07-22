import 'package:flutter/material.dart';
import './pages/routers.dart';
import 'Provide/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluintl/fluintl.dart';
import 'res/language.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  
  void initState() {
    super.initState();

//    setLocalizedSimpleValues(localizedSimpleValues);//配置简单多语言资源
    setLocalizedValues(localizedValues); //配置多语言资源
  }

  // void getlanguage() {
  //   var language = Provider.value<Auth>(context).getAuthState().language;
  //   setState(() {
  //     _locale = new Locale(language);
  //   });
  // }

 

  @override
  Widget build(BuildContext context) {
    // getthemeColor();
    // TODO: implement build
    // getlanguage();
    // getthemeColor();
    
    return ChangeNotifierProvider(
      builder: (context) => Auth(),
      child: new HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  

  

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    final color = auth.authState.theme;
final Locale _locale= new Locale(auth.authState.language);
    return new MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: color,
      ),
      locale: _locale,
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

void main() {
  runApp(MyApp());
}

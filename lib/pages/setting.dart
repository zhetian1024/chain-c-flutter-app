import 'package:flutter/material.dart';
import 'package:chain_c_app_flutter/res/language.dart';
import 'package:fluintl/fluintl.dart';
import 'package:chain_c_app_flutter/res/colors.dart';
import 'package:provider/provider.dart';
import 'package:chain_c_app_flutter/Provide/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flustars/flustars.dart';

String getlanguageModel(String key) {
  String languageModel = '';
  switch (key) {
    case 'zh':
      languageModel = '中文';
      break;
    case 'en':
      languageModel = 'English';
      break;
    default:
      languageModel = '中文';
  }
  return languageModel;
}

save(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provides = Provider.of<Auth>(context);
    String languageModel = getlanguageModel(provides.authState.language);

    return Scaffold(
      appBar: AppBar(
        title: Text(IntlUtil.getString(context, Ids.titleSetting)),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          new ExpansionTile(
            title: new Row(
              children: <Widget>[
                Icon(
                  Icons.color_lens,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    IntlUtil.getString(context, Ids.titleTheme),
                  ),
                )
              ],
            ),
            children: <Widget>[
              new Wrap(
                children: themeColorMap.keys.map((String key) {
                  Color value = themeColorMap[key];
                  return new InkWell(
                    onTap: () {
                      print(key);
                      provides.settheme(themeColorMap[key]);
                      save('theme', key);
                    },
                    child: new Container(
                      margin: EdgeInsets.all(5.0),
                      width: 36.0,
                      height: 36.0,
                      color: value,
                    ),
                  );
                }).toList(),
              )
            ],
          ),
          new ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/languagePage');
            },
            title: new Row(
              children: <Widget>[
                Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    IntlUtil.getString(context, Ids.titleLanguage),
                  ),
                )
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(languageModel,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF999999),
                    )),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          )
        ],
      ),
    );
  }
}

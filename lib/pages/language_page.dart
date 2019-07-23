import 'package:chain_c_app_flutter/res/language.dart';
import 'package:flutter/material.dart';
import 'package:fluintl/fluintl.dart';
import 'package:provider/provider.dart';
import 'package:chain_c_app_flutter/Provide/auth.dart';
import 'package:chain_c_app_flutter/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';
// class LanguagePage extends StatefulWidget {
//   @override
//   _LanguagePage createState() {
//     // TODO: implement createState
//     return _LanguagePage();
//   }
// }

// class _LanguagePage extends State<LanguagePage> {
//   List<Map> _list = new List();

//   String _currentLanguage;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _list.add({'key': (Ids.simplifiedChinese), 'isSelected': false});
//     _list.add({'key': (Ids.english), 'isSelected': false});
//   }

//   void _init(String key) {
//     for (var i = 0; i < _list.length; i++) {
//       print(_list[i]['key']);
//       if (key == _list[i]['key']) {
//         _list[i]['isSelected'] = true;
//       }
//     }

//     setState(() {
//       _currentLanguage = key;
//     });
//   }

//   bool index(String key) {
//     if (key == _currentLanguage) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<Auth>(context);
//     _init(auth.authState.language);
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           IntlUtil.getString(context, Ids.titleLanguage),
//           style: new TextStyle(fontSize: 16.0),
//         ),
//         actions: [
//           new Padding(
//             padding: EdgeInsets.all(12.0),
//             child: new SizedBox(
//               width: 64.0,
//               child: new RaisedButton(
//                 textColor: Colors.white,
//                 color: Colors.indigoAccent,
//                 child: Text(
//                   IntlUtil.getString(context, Ids.save),
//                   style: new TextStyle(fontSize: 12.0),
//                 ),
//                 onPressed: () {},
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: new ListView.builder(
//           itemCount: _list.length,
//           itemBuilder: (BuildContext context, int index) {
//             Map model = _list[index];
//             return new ListTile(
//               title: new Text(
//                 '21',
//                 style: new TextStyle(fontSize: 13.0),
//               ),
//               trailing: new Radio(
//                   value: true,
//                   groupValue: model['isSelected'] == true,
//                   activeColor: Colors.indigoAccent,
//                   onChanged: (value) {
//                     setState(() {
//                     //  _currentLanguage = model['key'];
//                       // _updateData();
//                     });
//                   }),
//               onTap: () {
//                 setState(() {
//                   // _currentLanguage = model;
//                   // _updateData();
//                 });
//               },
//             );
//           }),
//     );
//   }
// }

class LanguagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LanguagePageState();
  }
}

class _LanguagePageState extends State<LanguagePage> {
  List<LanguageModel> _list = new List();

  LanguageModel _currentLanguage;

  @override
  void initState() {
    super.initState();

    _list.add(LanguageModel(Ids.languageZH, 'zh', 'CH'));
    // _list.add(LanguageModel(Ids.languageTW, 'zh', 'TW'));
    // _list.add(LanguageModel(Ids.languageHK, 'zh', 'HK'));
    _list.add(LanguageModel(Ids.languageEN, 'en', 'US'));

    // _currentLanguage = SpHelper.getObject<LanguageModel>(Constant.keyLanguage);
    // if (ObjectUtil.isEmpty(_currentLanguage)) {
    //   _currentLanguage = _list[0];
    // }

    // _updateData();
  }

  void save(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  void _updateData() {
    //LogUtil.e('currentLanguage: ' + _currentLanguage.toString());
    String language = _currentLanguage.countryCode;
    for (int i = 0, length = _list.length; i < length; i++) {
      _list[i].isSelected = (_list[i].countryCode == language);
    }
  }

  void _init(String key) {
    setState(() {
      _currentLanguage = LanguageModel(Ids.languageEN, 'en', 'US');
    });
    _updateData();
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    // final ApplicationBloc bloc = BlocProvider.of<ApplicationBloc>(context);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          IntlUtil.getString(context, Ids.titleLanguage),
          style: new TextStyle(fontSize: 16.0),
        ),
        actions: [
          new Padding(
            padding: EdgeInsets.all(12.0),
            child: new SizedBox(
              width: 64.0,
              child: new RaisedButton(
                textColor: Colors.white,
                color: Colors.indigoAccent,
                child: Text(
                  IntlUtil.getString(context, Ids.save),
                  style: new TextStyle(fontSize: 12.0),
                ),
                onPressed: () {
                  // SpHelper.putObject(
                  //     Constant.keyLanguage,
                  //     ObjectUtil.isEmpty(_currentLanguage.languageCode)
                  //         ? null
                  //         : _currentLanguage);
                  // bloc.sendAppEvent(Constant.type_sys_update);
                  auth.setlanguage(_currentLanguage.languageCode);
                  save('language',_currentLanguage.languageCode);
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
      body: new ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            LanguageModel model = _list[index];
            return new ListTile(
              title: new Text(
                (model.titleId == Ids.languageAuto
                    ? IntlUtil.getString(context, model.titleId)
                    : IntlUtil.getString(context, model.titleId,
                        languageCode: 'zh', countryCode: 'CH')),
                style: new TextStyle(fontSize: 13.0),
              ),
              trailing: new Radio(
                  value: true,
                  groupValue: model.isSelected == true,
                  activeColor: Colors.indigoAccent,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = model;
                      _updateData();
                    });
                  }),
              onTap: () {
                setState(() {
                  _currentLanguage = model;
                  _updateData();
                });
              },
            );
          }),
    );
  }
}

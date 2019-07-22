import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';
import 'machine.dart';
import 'news.dart';

class Tabs extends StatefulWidget {
  @override
  _Tabs createState() {
    // TODO: implement createState
    return _Tabs();
  }
}

class _Tabs extends State<Tabs> {
  List pages = [Home(), Machine(), News()];
  int _currentIndex = 0;
  List _menubar = ['登录', '设备', '资讯'];

  GlobalKey<ScaffoldState> _globalKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('铁链'),
        leading: IconButton(
          icon: Icon(Icons.dashboard),
          onPressed: () {
            // _globalKey.currentState.openDrawer();
            _globalKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          )
        ],
      ),
      drawer: Container(
        width: 300,
        color: Theme.of(context).primaryColor,
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 5),
                width: 300,
                color: Theme.of(context).primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new ClipOval(
                      child: new Image.network(
                        'http://image.biaobaiju.com/uploads/20181025/19/1540468200-CoLeqbXkwl.jpg',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "黄文强",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "个人简介",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('登录')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: const Center(child: Text('设备')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[100],
                      child: const Center(child: Text('资讯')),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("设备")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("资讯")),
        ],
        currentIndex: this._currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
      ),
    );
  }
}

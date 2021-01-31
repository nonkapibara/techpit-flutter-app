import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyGetHttpDataState createState() => new _MyGetHttpDataState();
}

class _MyGetHttpDataState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connpass Search"),
      ),
      body: Column(children: <Widget>[
        Container(
          child: _buildInputField(),
        ),
        Divider(
          height: 0,
          thickness: 5,
          color: Colors.green,
          indent: 1,
          endIndent: 1,
        ),
      ]),
    );
  }

  /// 検索エリア
  Widget _buildInputField() {
    return Form(
      child: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: '検索キーワードを入力してください',
                      labelText: 'キーワードから探す',
                      labelStyle: TextStyle(color: Colors.green),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withAlpha(80), width: 0),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 40.0,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

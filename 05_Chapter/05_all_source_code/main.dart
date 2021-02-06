import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.greenAccent,
        scaffoldBackgroundColor: Colors.greenAccent[100],
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  var _searchWord = '';
  var _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '入力フォーム　サンプル',
          style: TextStyle(color: Colors.green[800]),
        ),
      ),
      body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 30.0, right: 20.0),
            child: Column(children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(color: Colors.cyan[900]),
                        maxLength: 20,
                        maxLengthEnforced: true,
                        obscureText: false,
                        autovalidate: false,
                        decoration: InputDecoration(
                          hintText: 'キーワードを入力してください',
                          labelText: 'キーワードから探す',
                          labelStyle: TextStyle(color: Colors.green),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.brown),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.indigoAccent),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'キーワードを入力してください';
                          }
                          return null;
                        },
                        onSaved: (val) => _searchWord = val,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 40.0,
                      ),
                      onPressed: () {
                        _startSearch();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(color: Colors.cyan[900]),
                      maxLength: 20,
                      maxLengthEnforced: true,
                      obscureText: false,
                      autovalidate: false,
                      decoration: InputDecoration(
                        hintText: 'e-mailを入力してください',
                        labelText: 'e-mail',
                        labelStyle: TextStyle(color: Colors.green),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigoAccent),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return '入力してください';
                        }
                        return null;
                      },
                      onSaved: (val) => _email = val,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.send,
                      size: 30.0,
                    ),
                    onPressed: () {
                      _startSearch();
                    },
                  ),
                ]),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withAlpha(80), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withAlpha(80), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ]),
          )),
    );
  }

  void _startSearch() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    }

    print('キーワード:' + this._searchWord);
    print('e-mail:' + this._email);
  }
}

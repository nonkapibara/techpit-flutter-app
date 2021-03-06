import 'package:flutter/material.dart';

import 'CommonUtil.dart';
import 'ConnectionBase.dart';

class Page1 extends StatefulWidget {
  _MyGetHttpDataState createState() => new _MyGetHttpDataState();
}

class _MyGetHttpDataState extends State<Page1> {
  ConnectionBase _connectionBase = ConnectionBase();
  List _data;

  /// 検索
  Future<void> _searchStart() async {
    var jsonData =
        await _connectionBase.getHttpJSONData(KEY_WORDS.Vacation.value);

    setState(() {
      _data = jsonData;
    });
  }

  @override
  void initState() {
    super.initState();
    this._searchStart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

import 'package:flutter/material.dart';

import 'CommonUtil.dart';

class CommonList {
  CommonUtil commonUtil = CommonUtil();

  Widget getListWidget(List _data) {
    if (_data == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Scaffold(
        body: ListView.builder(
            itemCount: _data == null ? 0 : _data.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        commonUtil.externalBrowser(
                            _data[index]['pageURL'].toString());
                      },
                      child: Image(
                          image: NetworkImage(
                              _data[index]['webformatURL'].toString())),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5.0, bottom: 40.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Image.asset('images/likes.png',
                                  width: 25.0, height: 25.0),
                              padding: EdgeInsets.only(left: 20.0)),
                          Container(
                              child: Text(_data[index]['likes'].toString(),
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.amber[900])),
                              padding: EdgeInsets.only(left: 10.0)),
                          Container(
                              child: Image.asset('images/favorites.png',
                                  width: 20.0, height: 20.0),
                              padding: EdgeInsets.only(left: 20.0)),
                          Container(
                              child: Text(_data[index]['favorites'].toString(),
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.amber[900])),
                              padding: EdgeInsets.only(left: 10.0)),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0,
                      thickness: 2,
                      color: Colors.amber,
                      indent: 1,
                      endIndent: 1,
                    ),
                  ],
                ),
              );
            }),
      );
    }
  }
}

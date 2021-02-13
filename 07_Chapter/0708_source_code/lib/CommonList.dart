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
                  ],
                ),
              );
            }),
      );
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class ConnectionBase {
  /*
   * HTTP通信JSONファイル取得
   */
  Future<List> getHttpJSONData(String keyword) async {
    String url =
        "https://pixabay.com/api/?key=★★自分のAPIキー★★";
    url += "&q=" + keyword;
    url += "&image_type=photo";
    var response = await http.get(Uri.encodeFull(url),
        headers: {"Content-Type": "application/json"});
    var jsonData = json.decode(response.body);

    return jsonData["hits"];
  }
}

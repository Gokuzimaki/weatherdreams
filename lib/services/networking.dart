import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHandler {
  final String url;
  NetworkHandler(this.url);

  /// getData() retrieves the data from a valid url and returns its json decoded
  /// dataObject if available
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = response.body;
      // for test viewing purpose
      // print('${response.body}');
      return jsonDecode(data);
    } else {
      print('An error occurred, ${response.statusCode}');
    }
  }
}

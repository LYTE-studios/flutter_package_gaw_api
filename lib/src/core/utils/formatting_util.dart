import 'dart:convert';

import 'package:gaw_api/gaw_api.dart';

class FormattingUtil {
  static Map<String, dynamic> decode(dynamic data) {
    if (data is String) {
      if (data.isEmpty || data == '{}') {
        return {};
      }
      return jsonDecode(data);
    }
    if (data is Map) {
      return data as Map<String, dynamic>;
    }

    throw Exception('Data couldn\'t decode correctly');
  }

  static String? formatUrl(String? endpoint) {
    if (endpoint == null) {
      return null;
    }

    return Configuration.apiUrl + endpoint;
  }
}

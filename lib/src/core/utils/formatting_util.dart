import 'dart:convert';

class FormattingUtil {
  static Map<String, dynamic> decode(dynamic data) {
    if (data is String) {
      return jsonDecode(data);
    }
    if (data is Map) {
      return data as Map<String, dynamic>;
    }

    throw Exception('Data couldn\'t decode correctly');
  }
}

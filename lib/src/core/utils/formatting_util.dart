import 'dart:convert';

import 'package:gaw_api/gaw_api.dart';

class FormattingUtil {
  static String formatUrlParameters(
    String url, {
    int? page,
    int? itemCount,
    String? searchTerm,
    String? sortTerm,
    bool ascending = false,
  }) {
    if (page != null && itemCount != null) {
      url = '$url/$itemCount/$page';

      if (sortTerm?.isNotEmpty ?? false) {
        // Set the algorithm for sort terms
        String sortAlgorithm = ascending ? 'ascending' : 'descending';

        // Apply to the url query
        url = '$url/$sortTerm/$sortAlgorithm/$itemCount/$page';
      }

      if (searchTerm?.isNotEmpty ?? false) {
        url = '$url/$itemCount/$page/$searchTerm';
      }
    }

    return url;
  }

  static Map<String, dynamic> decode(dynamic data) {
    if (data is String) {
      if (data.isEmpty || data == '{}') {
        return {};
      }
      return jsonDecode(data);
    }
    if (data is Map) {
      return data.map<String, dynamic>(
        (key, value) => MapEntry((key is String) ? key : key.toString(), value),
      );
    }

    throw Exception('Data couldn\'t decode correctly');
  }

  static String? formatUrl(String? endpoint) {
    if (endpoint == null) {
      return null;
    }

    return '${Configuration.apiUrl}/auth$endpoint';
  }
}

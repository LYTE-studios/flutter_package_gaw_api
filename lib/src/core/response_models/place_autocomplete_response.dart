import 'dart:convert';

import 'package:gaw_api/src/core/response_models/place_address.dart';

// TODO: Put this in the api package.

class PlaceAutocompleteResponse {
  final String? status;
  final List<PlaceAddress>? predictions;

  PlaceAutocompleteResponse({
    this.status,
    this.predictions,
  });

  factory PlaceAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    return PlaceAutocompleteResponse(
      status: json['status'],
      predictions: json['results'] != null
          ? List<PlaceAddress>.from((json['results'] as List)
              .map<PlaceAddress>((e) => PlaceAddress.fromJson(e)))
          : null,
    );
  }

  static PlaceAutocompleteResponse parseAutocompleteResult(
      String responseBody) {
    final parsed = jsonDecode(responseBody).cast<String, dynamic>();

    return PlaceAutocompleteResponse.fromJson(parsed);
  }
}

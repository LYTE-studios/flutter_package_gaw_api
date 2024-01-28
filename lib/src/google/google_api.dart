import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleApi {
  static Future<dynamic> fetchUrl(Map<String, String>? headers) async {
    Dio dio = Dio();

    String url = '${Configuration.googleApiUrl}/maps/api/place/textsearch/json';

    Response response = await dio.get(
      url,
      queryParameters: headers,
    );

    if (response.statusCode == 200) {
      return response.data;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<List<LatLng>> getDirections({
    required LatLng from,
    required LatLng to,
  }) async {
    Dio dio = Dio();

    String url =
        '${Configuration.routesGoogleApiUrl}/directions/v2:computeRoutes';

    Response response = await dio.post(
      url,
      queryParameters: {
        "key": Configuration.googleApiKey,
      },
      options: Options(
        headers: {
          "X-Goog-FieldMask": "routes.polyline",
        },
      ),
      data: jsonEncode(
        {
          "origin": {
            "location": {
              "latLng": {
                "latitude": from.latitude,
                "longitude": from.longitude,
              }
            }
          },
          "destination": {
            "location": {
              "latLng": {
                "latitude": to.latitude,
                "longitude": to.longitude,
              }
            }
          },
          "travelMode": "DRIVE",
        },
      ),
    );

    if (response.statusCode == 200) {
      List<PointLatLng> pointList = PolylinePoints().decodePolyline(
          response.data["routes"][0]["polyline"]["encodedPolyline"]);
      List<LatLng> data = [];

      for (PointLatLng point in pointList) {
        data.add(
          LatLng(
            point.latitude,
            point.longitude,
          ),
        );
      }

      return data;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}

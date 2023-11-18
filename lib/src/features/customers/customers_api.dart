import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/request_factory.dart';
import 'package:flutter_package_gaw_api/src/features/customers/request_models/create_customer_request.dart';
import 'package:flutter_package_gaw_api/src/features/customers/response_models/create_customer_response.dart';

class CustomerApi {
  static Future<CreateCustomerResponse?> createCustomer({
    required CreateCustomerRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/customers/create',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return CreateCustomerResponse.fromJson(jsonDecode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}

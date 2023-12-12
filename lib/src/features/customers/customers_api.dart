import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/formatting_util.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/request_factory.dart';
import 'package:flutter_package_gaw_api/src/features/customers/request_models/create_customer_request.dart';
import 'package:flutter_package_gaw_api/src/features/customers/response_models/create_customer_response.dart';
import 'package:flutter_package_gaw_api/src/features/customers/response_models/customer_list_response.dart';

class CustomerApi {
  static Future<CustomerListResponse?> getCustomers() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/customers',
    );

    if (response.statusCode == 200) {
      return CustomerListResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<CreateCustomerResponse?> createCustomer({
    required CreateCustomerRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/customers/create',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return CreateCustomerResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}

library customers_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/formatting_util.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'models/customer.dart';
export 'request_models/create_customer_request.dart';
export 'response_models/create_customer_response.dart';
export 'response_models/customer_list_response.dart';

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

  static Future<CustomerListResponse?> getCustomersQuery(
      {required String query}) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/customers/$query',
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

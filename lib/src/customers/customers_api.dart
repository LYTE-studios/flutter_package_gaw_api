library customers_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'models/customer.dart';
export 'request_models/create_customer_request.dart';
export 'request_models/update_customer_request.dart';
export 'response_models/create_customer_response.dart';
export 'response_models/customer_list_response.dart';

class CustomerApi {
  static Future<CustomerListResponse?> getCustomers({
    int? page,
    int? itemCount,
    String? searchTerm,
    String? sortTerm,
    bool ascending = false,
  }) async {
    String url = '/auth/customers';

    if (page != null && itemCount != null) {
      url = '/auth/customers/$itemCount/$page';

      if (sortTerm?.isNotEmpty ?? false) {
        if (ascending) {
          url = '/auth/customers/$sortTerm/ascending/$itemCount/$page';
        } else {
          url = '/auth/customers/$sortTerm/descending/$itemCount/$page';
        }
      }

      if (searchTerm?.isNotEmpty ?? false) {
        url = '/auth/customers/$itemCount/$page/$searchTerm';
      }
    }

    Response response = await RequestFactory.executeGet(
      endpoint: url,
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
      endpoint: '/auth/customers/$query',
    );

    if (response.statusCode == 200) {
      return CustomerListResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<Customer?> getCustomer({required String id}) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/auth/customers/details/$id',
    );

    if (response.statusCode == 200) {
      return Customer.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> deleteCustomer({required String id}) async {
    Response response = await RequestFactory.executeDelete(
      endpoint: '/auth/customers/details/$id',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<CreateCustomerResponse?> createCustomer({
    required CreateCustomerRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/customers/create',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return CreateCustomerResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> updateCustomer({
    required String id,
    required UpdateCustomerRequest request,
  }) async {
    Response response = await RequestFactory.executePut(
      endpoint: '/auth/customers/details/$id',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}

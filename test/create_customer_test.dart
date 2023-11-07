import 'dart:convert';

import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/response_models/jwt_response.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/configuration.dart';
import 'package:flutter_package_gaw_api/src/features/customers/customers_api.dart';
import 'package:flutter_package_gaw_api/src/features/customers/request_models/create_customer_request.dart';
import 'package:flutter_package_gaw_api/src/features/customers/response_models/create_customer_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomerApi Integration Tests', () {
    Configuration.clientSecret = 'test';
    Configuration.accessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjk5MzY0NDE0LCJpYXQiOjE2OTkzNjI0NjAsImp0aSI6ImYxNzAwYjVmNWQ2YjQyZDNiYzQwZGE2YzYzY2JiYzE3IiwidXNlcl9pZCI6IjU1YTg5ZDAxLTdhM2ItNGRiMi04OTUwLTk4YzVhM2E5YThmZSJ9.MOsXVAb1eUW300jv8TClEuyO1L8Z_ihJmf7gCuJ5-hI';
    Configuration.refreshToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDg5ODQ2MCwiaWF0IjoxNjk5MzYyNDYwLCJqdGkiOiI4MDBiNDM0ODMxNDA0YTM5YTU5MDVkODRmZGMzMThiOCIsInVzZXJfaWQiOiI1NWE4OWQwMS03YTNiLTRkYjItODk1MC05OGM1YTNhOWE4ZmUifQ.DtcixMF_5W-LZRkd9O3KzXGp3Ay04vl3cFKyJkLIRNo';
    test('createCustomer returns CreateCustomerResponse on success', () async {
      /*final login = LoginRequest((b) => b
        ..email = 'test@test.com'
        ..password = 'Database123');
      
      JwtResponse? jwtResponse = await AuthenticationApi.credentialsLogin(request: login);

      expect(jwtResponse, isNotNull);*/
      // Arrange
      final request = CreateCustomerRequest((b) => b
        ..firstName = 'Janette'
        ..lastName = 'Doeee'
        ..email = 'janettedoeee@example.com');

      CreateCustomerResponse? createCustomerResponse = await CustomerApi.createCustomer(request: request);

      expect(createCustomerResponse, isNotNull);
      expect(createCustomerResponse?.customerId, isNotNull);
    });
  });
}
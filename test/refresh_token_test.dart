import 'package:flutter_package_gaw_api/src/features/authentication/authentication_api.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/response_models/jwt_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Refresh Token Integration Test', () {
    // Set up a valid refreshToken for testing
    String validRefreshToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMDcyMjI5OSwiaWF0IjoxNjk5MTg2Mjk5LCJqdGkiOiI5ZTM0MzY5Y2E2NzU0Y2Y5OGUyNmY2YjJhMjk5Y2NjYiIsInVzZXJfaWQiOiI1NWE4OWQwMS03YTNiLTRkYjItODk1MC05OGM1YTNhOWE4ZmUifQ.rCHG9oFKMhVK_1mKWiONNDg8Ncs-ZcqfGbd4FfeQjrQ';

    test('Successful refresh token update', () async {
      // This will hit the actual backend if not mocked
      JwtResponse? result = await AuthenticationApi.refreshToken(refreshToken: validRefreshToken);

      // Assuming that a successful response returns a non-null JwtResponse
      expect(result, isNotNull);
      expect(result!.accessToken, isNotEmpty); // Replace with actual access token field
    });
  });
}

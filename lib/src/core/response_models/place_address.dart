// TODO: Put this in the api package

class PlaceAddress {
  final String formattedAddress;
  final double latitude;
  final double longitude;
  final String placeId;

  PlaceAddress({
    required this.formattedAddress,
    required this.latitude,
    required this.longitude,
    required this.placeId,
  });

  factory PlaceAddress.fromJson(Map<String, dynamic> json) {
    // Extract the formatted address
    final formattedAddress = json['formatted_address'];

    // Extract the latitude and longitude
    final location = json['geometry']['location'];
    final latitude = location['lat'];
    final longitude = location['lng'];

    // Extract the place ID
    final placeId = json['place_id'];

    return PlaceAddress(
      formattedAddress: formattedAddress,
      latitude: latitude,
      longitude: longitude,
      placeId: placeId,
    );
  }
}

class ParsedAddress {
  final String streetName;
  final String? streetNumber;
  final String postalCode;
  final String city;

  ParsedAddress(
      {required this.streetName,
      this.streetNumber,
      required this.postalCode,
      required this.city});

  static ParsedAddress parseAddress(String address) {
    // First, remove any trailing commas that might be present.
    address = address.replaceAll(',', '');

    // Split the address into parts.
    final parts = address.split(' ');

    // Try to find the index of the part that looks like a postal code.
    final postalCodeIndex =
        parts.indexWhere((part) => RegExp(r'\b\d{4}\b').hasMatch(part));

    String streetName = '';
    String? streetNumber;
    String postalCode = '';
    String city = '';

    if (postalCodeIndex != -1) {
      // Extract postal code and city.
      postalCode = parts[postalCodeIndex];
      city = parts.sublist(postalCodeIndex + 1).join(' ');

      // Extract street name and number.
      // Assume that the street number, if present, is the part right before the postal code.
      if (postalCodeIndex > 0 &&
          RegExp(r'^\d+[a-zA-Z]?$').hasMatch(parts[postalCodeIndex - 1])) {
        streetNumber = parts[postalCodeIndex - 1];
        streetName = parts.sublist(0, postalCodeIndex - 1).join(' ');
      } else {
        streetName = parts.sublist(0, postalCodeIndex).join(' ');
      }
    } else {
      // Fallback if the address doesn't contain a postal code.
      streetName = address;
    }

    return ParsedAddress(
      streetName: streetName,
      streetNumber: streetNumber,
      postalCode: postalCode,
      city: city,
    );
  }
}

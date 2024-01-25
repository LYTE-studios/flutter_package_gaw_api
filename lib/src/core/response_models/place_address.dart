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
}

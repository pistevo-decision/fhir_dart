part of '../fhir_dart.dart';

/// Note: address is intended to describe postal addresses for administrative purposes, not to describe absolute geographical coordinates.  Postal addresses are often used as proxies for physical locations (also see the [Location](location.html#) resource).
/// Base StructureDefinition for Address Type: An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery.  There are a variety of postal address formats defined around the world.
/// Need to be able to record postal addresses, along with notes about their use.
class Address extends Element implements FhirResource {
  /// Name of city, town etc.
  /// The name of the city, town, suburb, village or other community or delivery center.
  final String? city;

  /// Country (e.g. can be ISO 3166 2 or 3 letter code)
  /// Country - a nation as commonly understood or generally accepted.
  /// ISO 3166 3 letter codes can be used in place of a human readable country name.
  final String? country;

  /// District name (aka county)
  /// The name of the administrative area (county).
  /// District is sometimes known as county, but in some regions 'county' is used in place of city (municipality), so county name should be conveyed in city instead.
  final String? district;

  /// Street name, number, direction & P.O. Box etc.
  /// This component contains the house number, apartment number, street name, street direction,  P.O. Box number, delivery hints, and similar address information.
  final List<String>? line;

  /// Time period when address was/is in use.
  final Period? period;

  /// Postal code for area
  /// A postal code designating a region defined by the postal service.
  final String? postalCode;

  /// Sub-unit of country (abbreviations ok)
  /// Sub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (e.g. US 2 letter state codes).
  final String? state;

  /// Text representation of the address
  /// Specifies the entire address as it should be displayed e.g. on a postal label. This may be provided instead of or as well as the specific parts.
  /// Can provide both a text representation and parts. Applications updating an address SHALL ensure that  when both text and parts are present,  no content is included in the text that isn't found in a part.
  final String? text;

  /// Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.
  /// The definition of Address states that "address is intended to describe postal addresses, not physical locations". However, many applications track whether an address has a dual purpose of being a location that can be visited as well as being a valid delivery destination, and Postal addresses are often used as proxies for physical locations (also see the [Location](location.html#) resource).
  final String? type; // Possible values: 'postal', 'physical', 'both'
  /// The purpose of this address.
  /// Applications can assume that an address is current unless it explicitly says that it is temporary or old.
  final String?
      use; // Possible values: 'home', 'work', 'temp', 'old', 'billing'
  Address({
    this.city,
    this.country,
    this.district,
    super.fhirExtension,
    super.id,
    this.line,
    this.period,
    this.postalCode,
    this.state,
    this.text,
    this.type,
    this.use,
  });

  @override
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'] as String?,
      country: json['country'] as String?,
      district: json['district'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      line: (json['line'] as List<dynamic>?)?.map((e) => e as String).toList(),
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      postalCode: json['postalCode'] as String?,
      state: json['state'] as String?,
      text: json['text'] as String?,
      type: json['type'] as String?,
      use: json['use'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'city': city,
        'country': country,
        'district': district,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'line': line?.map((e) => e).toList(),
        'period': period?.toJson(),
        'postalCode': postalCode,
        'state': state,
        'text': text,
        'type': type,
        'use': use,
      };

  @override
  Address copyWith({
    String? city,
    String? country,
    String? district,
    List<Extension>? fhirExtension,
    String? id,
    List<String>? line,
    Period? period,
    String? postalCode,
    String? state,
    String? text,
    String? type,
    String? use,
  }) {
    return Address(
      city: city ?? this.city,
      country: country ?? this.country,
      district: district ?? this.district,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      line: line ?? this.line,
      period: period ?? this.period,
      postalCode: postalCode ?? this.postalCode,
      state: state ?? this.state,
      text: text ?? this.text,
      type: type ?? this.type,
      use: use ?? this.use,
    );
  }
}

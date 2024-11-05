part of '../fhir_dart.dart';

/// Authorization in areas within a country.
class MedicinalProductAuthorizationJurisdictionalAuthorization
    extends BackboneElement implements FhirResource {
  /// Country of authorization.
  final CodeableConcept? country;

  /// The assigned number for the marketing authorization.
  final List<Identifier>? identifier;

  /// Jurisdiction within a country.
  final List<CodeableConcept>? jurisdiction;

  /// The legal status of supply in a jurisdiction or region.
  final CodeableConcept? legalStatusOfSupply;

  /// The start and expected end date of the authorization.
  final Period? validityPeriod;
  MedicinalProductAuthorizationJurisdictionalAuthorization({
    this.country,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.jurisdiction,
    this.legalStatusOfSupply,
    super.modifierExtension,
    this.validityPeriod,
  });

  @override
  factory MedicinalProductAuthorizationJurisdictionalAuthorization.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductAuthorizationJurisdictionalAuthorization(
      country: json['country'] != null
          ? CodeableConcept.fromJson(
              (json['country'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      legalStatusOfSupply: json['legalStatusOfSupply'] != null
          ? CodeableConcept.fromJson(
              (json['legalStatusOfSupply'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(
              (json['validityPeriod'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'country': country?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'legalStatusOfSupply': legalStatusOfSupply?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'validityPeriod': validityPeriod?.toJson(),
      };

  @override
  MedicinalProductAuthorizationJurisdictionalAuthorization copyWith({
    CodeableConcept? country,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    List<CodeableConcept>? jurisdiction,
    CodeableConcept? legalStatusOfSupply,
    List<Extension>? modifierExtension,
    Period? validityPeriod,
  }) {
    return MedicinalProductAuthorizationJurisdictionalAuthorization(
      country: country ?? this.country,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      legalStatusOfSupply: legalStatusOfSupply ?? this.legalStatusOfSupply,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      validityPeriod: validityPeriod ?? this.validityPeriod,
    );
  }
}

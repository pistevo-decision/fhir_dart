part of '../fhir_dart.dart';

/// Details of the event
/// Details of a accident which resulted in injuries which required the products and services listed in the claim.
class ExplanationOfBenefitAccident extends BackboneElement
    implements FhirResource {
  /// When the incident occurred
  /// Date of an accident event  related to the products and services contained in the claim.
  /// The date of the accident has to precede the dates of the products and services but within a reasonable timeframe.
  final String? date;

  /// Where the event occurred
  /// The physical location of the accident event.
  final Address? locationAddress;

  /// Where the event occurred
  /// The physical location of the accident event.
  final Reference? locationReference;

  /// The nature of the accident
  /// The type or context of the accident event for the purposes of selection of potential insurance coverages and determination of coordination between insurers.
  final CodeableConcept? type;
  ExplanationOfBenefitAccident({
    this.date,
    super.fhirExtension,
    super.id,
    this.locationAddress,
    this.locationReference,
    super.modifierExtension,
    this.type,
  });

  @override
  factory ExplanationOfBenefitAccident.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAccident(
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(
              (json['locationAddress'] as Map).cast<String, dynamic>())
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              (json['locationReference'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'date': date,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'locationAddress': locationAddress?.toJson(),
        'locationReference': locationReference?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
      };

  @override
  ExplanationOfBenefitAccident copyWith({
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    Address? locationAddress,
    Reference? locationReference,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return ExplanationOfBenefitAccident(
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}

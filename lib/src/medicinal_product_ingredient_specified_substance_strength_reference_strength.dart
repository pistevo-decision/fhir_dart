part of '../fhir_dart.dart';

/// Strength expressed in terms of a reference substance.
class MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength
    extends BackboneElement implements FhirResource {
  /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;

  /// For when strength is measured at a particular point or distance.
  final String? measurementPoint;

  /// Strength expressed in terms of a reference substance.
  final Ratio strength;

  /// Strength expressed in terms of a reference substance.
  final Ratio? strengthLowLimit;

  /// Relevant reference substance.
  final CodeableConcept? substance;
  MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength({
    this.country,
    super.fhirExtension,
    super.id,
    this.measurementPoint,
    super.modifierExtension,
    required this.strength,
    this.strengthLowLimit,
    this.substance,
  });

  @override
  factory MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength(
      country: (json['country'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      measurementPoint: json['measurementPoint'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      strength:
          Ratio.fromJson((json['strength'] as Map).cast<String, dynamic>()),
      strengthLowLimit: json['strengthLowLimit'] != null
          ? Ratio.fromJson(
              (json['strengthLowLimit'] as Map).cast<String, dynamic>())
          : null,
      substance: json['substance'] != null
          ? CodeableConcept.fromJson(
              (json['substance'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'country': country?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'measurementPoint': measurementPoint,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'strength': strength.toJson(),
        'strengthLowLimit': strengthLowLimit?.toJson(),
        'substance': substance?.toJson(),
      };

  @override
  MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength
      copyWith({
    List<CodeableConcept>? country,
    List<Extension>? fhirExtension,
    String? id,
    String? measurementPoint,
    List<Extension>? modifierExtension,
    Ratio? strength,
    Ratio? strengthLowLimit,
    CodeableConcept? substance,
  }) {
    return MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength(
      country: country ?? this.country,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
      strengthLowLimit: strengthLowLimit ?? this.strengthLowLimit,
      substance: substance ?? this.substance,
    );
  }
}

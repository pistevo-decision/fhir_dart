part of '../fhir_dart.dart';

/// Characteristics of quantitative results
/// Characteristics for quantitative results of this observation.
class ObservationDefinitionQuantitativeDetails extends BackboneElement
    implements FhirResource {
  /// SI to Customary unit conversion factor
  /// Factor for converting value expressed with SI unit to value expressed with customary unit.
  final num? conversionFactor;

  /// Customary unit for quantitative results
  /// Customary unit used to report quantitative results of observations conforming to this ObservationDefinition.
  final CodeableConcept? customaryUnit;

  /// Decimal precision of observation quantitative results
  /// Number of digits after decimal separator when the results of such observations are of type Quantity.
  final int? decimalPrecision;

  /// SI unit for quantitative results
  /// SI unit used to report quantitative results of observations conforming to this ObservationDefinition.
  final CodeableConcept? unit;
  ObservationDefinitionQuantitativeDetails({
    this.conversionFactor,
    this.customaryUnit,
    this.decimalPrecision,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.unit,
  });

  @override
  factory ObservationDefinitionQuantitativeDetails.fromJson(
      Map<String, dynamic> json) {
    return ObservationDefinitionQuantitativeDetails(
      conversionFactor: json['conversionFactor'] as num?,
      customaryUnit: json['customaryUnit'] != null
          ? CodeableConcept.fromJson(
              (json['customaryUnit'] as Map).cast<String, dynamic>())
          : null,
      decimalPrecision: json['decimalPrecision'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(
              (json['unit'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'conversionFactor': conversionFactor,
        'customaryUnit': customaryUnit?.toJson(),
        'decimalPrecision': decimalPrecision,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'unit': unit?.toJson(),
      };

  @override
  ObservationDefinitionQuantitativeDetails copyWith({
    num? conversionFactor,
    CodeableConcept? customaryUnit,
    int? decimalPrecision,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? unit,
  }) {
    return ObservationDefinitionQuantitativeDetails(
      conversionFactor: conversionFactor ?? this.conversionFactor,
      customaryUnit: customaryUnit ?? this.customaryUnit,
      decimalPrecision: decimalPrecision ?? this.decimalPrecision,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      unit: unit ?? this.unit,
    );
  }
}

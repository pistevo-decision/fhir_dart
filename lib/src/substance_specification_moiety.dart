part of '../fhir_dart.dart';

/// Moiety, for structural modifications.
class SubstanceSpecificationMoiety extends BackboneElement
    implements FhirResource {
  /// Quantitative value for this moiety.
  final Quantity? amountQuantity;

  /// Quantitative value for this moiety.
  final String? amountString;

  /// Identifier by which this moiety substance is known.
  final Identifier? identifier;

  /// Molecular formula.
  final String? molecularFormula;

  /// Textual name for this moiety substance.
  final String? name;

  /// Optical activity type.
  final CodeableConcept? opticalActivity;

  /// Role that the moiety is playing.
  final CodeableConcept? role;

  /// Stereochemistry type.
  final CodeableConcept? stereochemistry;
  SubstanceSpecificationMoiety({
    this.amountQuantity,
    this.amountString,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.molecularFormula,
    this.name,
    this.opticalActivity,
    this.role,
    this.stereochemistry,
  });

  @override
  factory SubstanceSpecificationMoiety.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecificationMoiety(
      amountQuantity: json['amountQuantity'] != null
          ? Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>)
          : null,
      amountString: json['amountString'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      molecularFormula: json['molecularFormula'] as String?,
      name: json['name'] as String?,
      opticalActivity: json['opticalActivity'] != null
          ? CodeableConcept.fromJson(
              json['opticalActivity'] as Map<String, dynamic>)
          : null,
      role: json['role'] != null
          ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>)
          : null,
      stereochemistry: json['stereochemistry'] != null
          ? CodeableConcept.fromJson(
              json['stereochemistry'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amountQuantity': amountQuantity?.toJson(),
        'amountString': amountString,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'molecularFormula': molecularFormula,
        'name': name,
        'opticalActivity': opticalActivity?.toJson(),
        'role': role?.toJson(),
        'stereochemistry': stereochemistry?.toJson(),
      };

  @override
  SubstanceSpecificationMoiety copyWith({
    Quantity? amountQuantity,
    String? amountString,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    String? molecularFormula,
    String? name,
    CodeableConcept? opticalActivity,
    CodeableConcept? role,
    CodeableConcept? stereochemistry,
  }) {
    return SubstanceSpecificationMoiety(
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountString: amountString ?? this.amountString,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      name: name ?? this.name,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      role: role ?? this.role,
      stereochemistry: stereochemistry ?? this.stereochemistry,
    );
  }
}

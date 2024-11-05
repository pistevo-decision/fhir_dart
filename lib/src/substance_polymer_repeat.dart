part of '../fhir_dart.dart';

/// Todo.
class SubstancePolymerRepeat extends BackboneElement implements FhirResource {
  /// Todo.
  final String? averageMolecularFormula;

  /// Todo.
  final int? numberOfUnits;

  /// Todo.
  final List<SubstancePolymerRepeatRepeatUnit>? repeatUnit;

  /// Todo.
  final CodeableConcept? repeatUnitAmountType;
  SubstancePolymerRepeat({
    this.averageMolecularFormula,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.numberOfUnits,
    this.repeatUnit,
    this.repeatUnitAmountType,
  });

  @override
  factory SubstancePolymerRepeat.fromJson(Map<String, dynamic> json) {
    return SubstancePolymerRepeat(
      averageMolecularFormula: json['averageMolecularFormula'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      numberOfUnits: json['numberOfUnits'] as int?,
      repeatUnit: (json['repeatUnit'] as List<dynamic>?)
          ?.map((e) => SubstancePolymerRepeatRepeatUnit.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      repeatUnitAmountType: json['repeatUnitAmountType'] != null
          ? CodeableConcept.fromJson(
              (json['repeatUnitAmountType'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'averageMolecularFormula': averageMolecularFormula,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'numberOfUnits': numberOfUnits,
        'repeatUnit': repeatUnit?.map((e) => e.toJson()).toList(),
        'repeatUnitAmountType': repeatUnitAmountType?.toJson(),
      };

  @override
  SubstancePolymerRepeat copyWith({
    String? averageMolecularFormula,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? numberOfUnits,
    List<SubstancePolymerRepeatRepeatUnit>? repeatUnit,
    CodeableConcept? repeatUnitAmountType,
  }) {
    return SubstancePolymerRepeat(
      averageMolecularFormula:
          averageMolecularFormula ?? this.averageMolecularFormula,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      numberOfUnits: numberOfUnits ?? this.numberOfUnits,
      repeatUnit: repeatUnit ?? this.repeatUnit,
      repeatUnitAmountType: repeatUnitAmountType ?? this.repeatUnitAmountType,
    );
  }
}

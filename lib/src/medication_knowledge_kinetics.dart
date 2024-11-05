part of '../fhir_dart.dart';

/// The time course of drug absorption, distribution, metabolism and excretion of a medication from the body.
class MedicationKnowledgeKinetics extends BackboneElement
    implements FhirResource {
  /// The drug concentration measured at certain discrete points in time.
  final List<Quantity>? areaUnderCurve;

  /// Time required for concentration in the body to decrease by half
  /// The time required for any specified property (e.g., the concentration of a substance in the body) to decrease by half.
  final Duration? halfLifePeriod;

  /// The median lethal dose of a drug.
  final List<Quantity>? lethalDose50;
  MedicationKnowledgeKinetics({
    this.areaUnderCurve,
    super.fhirExtension,
    this.halfLifePeriod,
    super.id,
    this.lethalDose50,
    super.modifierExtension,
  });

  @override
  factory MedicationKnowledgeKinetics.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeKinetics(
      areaUnderCurve: (json['areaUnderCurve'] as List<dynamic>?)
          ?.map((e) => Quantity.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      halfLifePeriod: json['halfLifePeriod'] != null
          ? Duration.fromJson(
              (json['halfLifePeriod'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      lethalDose50: (json['lethalDose50'] as List<dynamic>?)
          ?.map((e) => Quantity.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'areaUnderCurve': areaUnderCurve?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'halfLifePeriod': halfLifePeriod?.toJson(),
        'id': id,
        'lethalDose50': lethalDose50?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicationKnowledgeKinetics copyWith({
    List<Quantity>? areaUnderCurve,
    List<Extension>? fhirExtension,
    Duration? halfLifePeriod,
    String? id,
    List<Quantity>? lethalDose50,
    List<Extension>? modifierExtension,
  }) {
    return MedicationKnowledgeKinetics(
      areaUnderCurve: areaUnderCurve ?? this.areaUnderCurve,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      halfLifePeriod: halfLifePeriod ?? this.halfLifePeriod,
      id: id ?? this.id,
      lethalDose50: lethalDose50 ?? this.lethalDose50,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

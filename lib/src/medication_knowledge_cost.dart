part of '../fhir_dart.dart';

/// The pricing of the medication
/// The price of the medication.
class MedicationKnowledgeCost extends BackboneElement implements FhirResource {
  /// The price of the medication.
  final Money cost;

  /// The source or owner for the price information
  /// The source or owner that assigns the price to the medication.
  final String? source;

  /// The category of the cost information.  For example, manufacturers' cost, patient cost, claim reimbursement cost, actual acquisition cost.
  final CodeableConcept type;
  MedicationKnowledgeCost({
    required this.cost,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.source,
    required this.type,
  });

  @override
  factory MedicationKnowledgeCost.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeCost(
      cost: Money.fromJson((json['cost'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      source: json['source'] as String?,
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'cost': cost.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'source': source,
        'type': type.toJson(),
      };

  @override
  MedicationKnowledgeCost copyWith({
    Money? cost,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? source,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgeCost(
      cost: cost ?? this.cost,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      type: type ?? this.type,
    );
  }
}

part of '../fhir_dart.dart';

/// The maximum number of units of the medication that can be dispensed in a period.
class MedicationKnowledgeRegulatoryMaxDispense extends BackboneElement
    implements FhirResource {
  /// The period that applies to the maximum number of units.
  final Duration? period;

  /// The maximum number of units of the medication that can be dispensed.
  final Quantity quantity;
  MedicationKnowledgeRegulatoryMaxDispense({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
    required this.quantity,
  });

  @override
  factory MedicationKnowledgeRegulatoryMaxDispense.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeRegulatoryMaxDispense(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] != null
          ? Duration.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      quantity: Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'quantity': quantity.toJson(),
      };

  @override
  MedicationKnowledgeRegulatoryMaxDispense copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Duration? period,
    Quantity? quantity,
  }) {
    return MedicationKnowledgeRegulatoryMaxDispense(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      quantity: quantity ?? this.quantity,
    );
  }
}

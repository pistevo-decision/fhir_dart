part of '../fhir_dart.dart';

/// Associated or related medication information
/// Associated or related knowledge about a medication.
class MedicationKnowledgeRelatedMedicationKnowledge extends BackboneElement
    implements FhirResource {
  /// Associated documentation about the associated medication knowledge.
  final List<Reference> reference;

  /// Category of medicationKnowledge
  /// The category of the associated medication knowledge reference.
  final CodeableConcept type;
  MedicationKnowledgeRelatedMedicationKnowledge({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.reference,
    required this.type,
  });

  @override
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeRelatedMedicationKnowledge(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reference: (json['reference'] as List<dynamic>)
          .map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reference': reference.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  MedicationKnowledgeRelatedMedicationKnowledge copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgeRelatedMedicationKnowledge(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      type: type ?? this.type,
    );
  }
}

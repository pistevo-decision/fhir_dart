part of '../fhir_dart.dart';

/// Categorization of the medication within a formulary or classification system.
class MedicationKnowledgeMedicineClassification extends BackboneElement
    implements FhirResource {
  /// Specific category assigned to the medication (e.g. anti-infective, anti-hypertensive, antibiotic, etc.).
  final List<CodeableConcept>? classification;

  /// The type of category for the medication (for example, therapeutic classification, therapeutic sub-classification).
  final CodeableConcept type;
  MedicationKnowledgeMedicineClassification({
    this.classification,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory MedicationKnowledgeMedicineClassification.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeMedicineClassification(
      classification: (json['classification'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'classification': classification?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  MedicationKnowledgeMedicineClassification copyWith({
    List<CodeableConcept>? classification,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgeMedicineClassification(
      classification: classification ?? this.classification,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}

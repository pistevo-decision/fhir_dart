part of '../fhir_dart.dart';

/// Dosage for the medication for the specific guidelines.
class MedicationKnowledgeAdministrationGuidelinesDosage extends BackboneElement
    implements FhirResource {
  /// Dosage for the medication for the specific guidelines.
  final List<Dosage> dosage;

  /// Type of dosage
  /// The type of dosage (for example, prophylaxis, maintenance, therapeutic, etc.).
  final CodeableConcept type;
  MedicationKnowledgeAdministrationGuidelinesDosage({
    required this.dosage,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory MedicationKnowledgeAdministrationGuidelinesDosage.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeAdministrationGuidelinesDosage(
      dosage: (json['dosage'] as List<dynamic>)
          .map((e) => Dosage.fromJson((e as Map).cast<String, dynamic>()))
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
        'dosage': dosage.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  MedicationKnowledgeAdministrationGuidelinesDosage copyWith({
    List<Dosage>? dosage,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgeAdministrationGuidelinesDosage(
      dosage: dosage ?? this.dosage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}

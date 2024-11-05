part of '../fhir_dart.dart';

/// Guidelines for administration of the medication
/// Guidelines for the administration of the medication.
class MedicationKnowledgeAdministrationGuidelines extends BackboneElement
    implements FhirResource {
  /// Dosage for the medication for the specific guidelines.
  final List<MedicationKnowledgeAdministrationGuidelinesDosage>? dosage;

  /// Indication for use that apply to the specific administration guidelines.
  final CodeableConcept? indicationCodeableConcept;

  /// Indication for use that apply to the specific administration guidelines.
  final Reference? indicationReference;

  /// Characteristics of the patient that are relevant to the administration guidelines (for example, height, weight, gender, etc.).
  final List<MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics>?
      patientCharacteristics;
  MedicationKnowledgeAdministrationGuidelines({
    this.dosage,
    super.fhirExtension,
    super.id,
    this.indicationCodeableConcept,
    this.indicationReference,
    super.modifierExtension,
    this.patientCharacteristics,
  });

  @override
  factory MedicationKnowledgeAdministrationGuidelines.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeAdministrationGuidelines(
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map((e) =>
              MedicationKnowledgeAdministrationGuidelinesDosage.fromJson(
                  (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      indicationCodeableConcept: json['indicationCodeableConcept'] != null
          ? CodeableConcept.fromJson((json['indicationCodeableConcept'] as Map)
              .cast<String, dynamic>())
          : null,
      indicationReference: json['indicationReference'] != null
          ? Reference.fromJson(
              (json['indicationReference'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      patientCharacteristics: (json['patientCharacteristics'] as List<dynamic>?)
          ?.map((e) =>
              MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics
                  .fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'dosage': dosage?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'indicationCodeableConcept': indicationCodeableConcept?.toJson(),
        'indicationReference': indicationReference?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'patientCharacteristics':
            patientCharacteristics?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicationKnowledgeAdministrationGuidelines copyWith({
    List<MedicationKnowledgeAdministrationGuidelinesDosage>? dosage,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? indicationCodeableConcept,
    Reference? indicationReference,
    List<Extension>? modifierExtension,
    List<MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics>?
        patientCharacteristics,
  }) {
    return MedicationKnowledgeAdministrationGuidelines(
      dosage: dosage ?? this.dosage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      indicationCodeableConcept:
          indicationCodeableConcept ?? this.indicationCodeableConcept,
      indicationReference: indicationReference ?? this.indicationReference,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patientCharacteristics:
          patientCharacteristics ?? this.patientCharacteristics,
    );
  }
}

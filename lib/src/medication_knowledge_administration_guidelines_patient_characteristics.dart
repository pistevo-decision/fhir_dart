part of '../fhir_dart.dart';

/// Characteristics of the patient that are relevant to the administration guidelines (for example, height, weight, gender, etc.).
class MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics
    extends BackboneElement implements FhirResource {
  /// Specific characteristic that is relevant to the administration guideline (e.g. height, weight, gender).
  final CodeableConcept? characteristicCodeableConcept;

  /// Specific characteristic that is relevant to the administration guideline (e.g. height, weight, gender).
  final Quantity? characteristicQuantity;

  /// The specific characteristic (e.g. height, weight, gender, etc.).
  final List<String>? value;
  MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics({
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.value,
  });

  @override
  factory MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics(
      characteristicCodeableConcept:
          json['characteristicCodeableConcept'] != null
              ? CodeableConcept.fromJson(
                  (json['characteristicCodeableConcept'] as Map)
                      .cast<String, dynamic>())
              : null,
      characteristicQuantity: json['characteristicQuantity'] != null
          ? Quantity.fromJson(
              (json['characteristicQuantity'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      value:
          (json['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'characteristicCodeableConcept':
            characteristicCodeableConcept?.toJson(),
        'characteristicQuantity': characteristicQuantity?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'value': value?.map((e) => e).toList(),
      };

  @override
  MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics copyWith({
    CodeableConcept? characteristicCodeableConcept,
    Quantity? characteristicQuantity,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<String>? value,
  }) {
    return MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics(
      characteristicCodeableConcept:
          characteristicCodeableConcept ?? this.characteristicCodeableConcept,
      characteristicQuantity:
          characteristicQuantity ?? this.characteristicQuantity,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
    );
  }
}

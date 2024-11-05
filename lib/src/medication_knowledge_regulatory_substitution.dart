part of '../fhir_dart.dart';

/// Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
class MedicationKnowledgeRegulatorySubstitution extends BackboneElement
    implements FhirResource {
  /// Specifies if regulation allows for changes in the medication when dispensing.
  final bool allowed;

  /// Specifies the type of substitution allowed.
  final CodeableConcept type;
  MedicationKnowledgeRegulatorySubstitution({
    required this.allowed,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory MedicationKnowledgeRegulatorySubstitution.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeRegulatorySubstitution(
      allowed: json['allowed'] as bool,
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
        'allowed': allowed,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  MedicationKnowledgeRegulatorySubstitution copyWith({
    bool? allowed,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgeRegulatorySubstitution(
      allowed: allowed ?? this.allowed,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}

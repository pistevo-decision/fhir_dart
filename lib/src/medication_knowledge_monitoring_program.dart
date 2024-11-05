part of '../fhir_dart.dart';

/// Program under which a medication is reviewed
/// The program under which the medication is reviewed.
class MedicationKnowledgeMonitoringProgram extends BackboneElement
    implements FhirResource {
  /// Name of the reviewing program.
  final String? name;

  /// Type of program under which the medication is monitored.
  final CodeableConcept? type;
  MedicationKnowledgeMonitoringProgram({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    this.type,
  });

  @override
  factory MedicationKnowledgeMonitoringProgram.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeMonitoringProgram(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'type': type?.toJson(),
      };

  @override
  MedicationKnowledgeMonitoringProgram copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgeMonitoringProgram(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}

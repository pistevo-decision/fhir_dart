part of '../fhir_dart.dart';

/// Who should participate in the action
/// Indicates who should participate in performing the action described.
class ActivityDefinitionParticipant extends BackboneElement
    implements FhirResource {
  /// E.g. Nurse, Surgeon, Parent, etc.
  /// The role the participant should play in performing the described action.
  final CodeableConcept? role;

  /// The type of participant in the action.
  final String
      type; // Possible values: 'patient', 'practitioner', 'related-person', 'device'
  ActivityDefinitionParticipant({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.role,
    required this.type,
  });

  @override
  factory ActivityDefinitionParticipant.fromJson(Map<String, dynamic> json) {
    return ActivityDefinitionParticipant(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] != null
          ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>)
          : null,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'role': role?.toJson(),
        'type': type,
      };

  @override
  ActivityDefinitionParticipant copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? role,
    String? type,
  }) {
    return ActivityDefinitionParticipant(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      type: type ?? this.type,
    );
  }
}

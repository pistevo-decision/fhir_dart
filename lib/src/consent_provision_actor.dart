part of '../fhir_dart.dart';

/// Who|what controlled by this rule (or group, by role)
/// Who or what is controlled by this rule. Use group to identify a set of actors by some property they share (e.g. 'admitting officers').
class ConsentProvisionActor extends BackboneElement implements FhirResource {
  /// Resource for the actor (or group, by role)
  /// The resource that identifies the actor. To identify actors by type, use group to identify a set of actors by some property they share (e.g. 'admitting officers').
  final Reference reference;

  /// How the actor is involved
  /// How the individual is involved in the resources content that is described in the exception.
  final CodeableConcept role;
  ConsentProvisionActor({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.reference,
    required this.role,
  });

  @override
  factory ConsentProvisionActor.fromJson(Map<String, dynamic> json) {
    return ConsentProvisionActor(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reference: Reference.fromJson(
          (json['reference'] as Map).cast<String, dynamic>()),
      role: CodeableConcept.fromJson(
          (json['role'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reference': reference.toJson(),
        'role': role.toJson(),
      };

  @override
  ConsentProvisionActor copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? reference,
    CodeableConcept? role,
  }) {
    return ConsentProvisionActor(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
    );
  }
}

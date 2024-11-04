part of '../fhir_dart.dart';

/// The people who performed the procedure
/// Limited to "real" people rather than equipment.
class ProcedurePerformer extends BackboneElement implements FhirResource {
  /// The reference to the practitioner
  /// The practitioner who was involved in the procedure.
  final Reference actor;

  /// Type of performance
  /// Distinguishes the type of involvement of the performer in the procedure. For example, surgeon, anaesthetist, endoscopist.
  final CodeableConcept? function;

  /// Organization the device or practitioner was acting for
  /// The organization the device or practitioner was acting on behalf of.
  final Reference? onBehalfOf;
  ProcedurePerformer({
    required this.actor,
    super.fhirExtension,
    this.function,
    super.id,
    super.modifierExtension,
    this.onBehalfOf,
  });

  @override
  factory ProcedurePerformer.fromJson(Map<String, dynamic> json) {
    return ProcedurePerformer(
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      function: json['function'] != null
          ? CodeableConcept.fromJson(json['function'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actor': actor.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'function': function?.toJson(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'onBehalfOf': onBehalfOf?.toJson(),
      };

  @override
  ProcedurePerformer copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    CodeableConcept? function,
    String? id,
    List<Extension>? modifierExtension,
    Reference? onBehalfOf,
  }) {
    return ProcedurePerformer(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      function: function ?? this.function,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
    );
  }
}

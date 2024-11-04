part of '../fhir_dart.dart';

/// Who performed the medication administration and what they did
/// Indicates who or what performed the medication administration and how they were involved.
class MedicationAdministrationPerformer extends BackboneElement
    implements FhirResource {
  /// Who performed the medication administration
  /// Indicates who or what performed the medication administration.
  final Reference actor;

  /// Type of performance
  /// Distinguishes the type of involvement of the performer in the medication administration.
  final CodeableConcept? function;
  MedicationAdministrationPerformer({
    required this.actor,
    super.fhirExtension,
    this.function,
    super.id,
    super.modifierExtension,
  });

  @override
  factory MedicationAdministrationPerformer.fromJson(
      Map<String, dynamic> json) {
    return MedicationAdministrationPerformer(
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
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actor': actor.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'function': function?.toJson(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicationAdministrationPerformer copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    CodeableConcept? function,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return MedicationAdministrationPerformer(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      function: function ?? this.function,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

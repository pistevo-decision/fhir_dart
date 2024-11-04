part of '../fhir_dart.dart';

 /// Who performed event
 /// Indicates who performed the immunization event.
class ImmunizationPerformer extends BackboneElement implements FhirResource {
   /// Individual or organization who was performing
   /// The practitioner or organization who performed the action.
   /// When the individual practitioner who performed the action is known, it is best to send.
  final Reference actor;
   /// What type of performance was done
   /// Describes the type of performance (e.g. ordering provider, administering provider, etc.).
  final CodeableConcept? function;
  ImmunizationPerformer({
    required this.actor,
    super.fhirExtension,
    this.function,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory ImmunizationPerformer.fromJson(Map<String, dynamic> json) {
    return ImmunizationPerformer(
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      function: json['function'] != null ? CodeableConcept.fromJson(json['function'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'actor': actor.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'function': function?.toJson(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  ImmunizationPerformer copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    CodeableConcept? function,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ImmunizationPerformer(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      function: function ?? this.function,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

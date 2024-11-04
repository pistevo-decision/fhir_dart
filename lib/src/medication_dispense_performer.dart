part of '../fhir_dart.dart';

 /// Who performed event
 /// Indicates who or what performed the event.
class MedicationDispensePerformer extends BackboneElement implements FhirResource {
   /// Individual who was performing
   /// The device, practitioner, etc. who performed the action.  It should be assumed that the actor is the dispenser of the medication.
  final Reference actor;
   /// Who performed the dispense and what they did
   /// Distinguishes the type of performer in the dispense.  For example, date enterer, packager, final checker.
  final CodeableConcept? function;
  MedicationDispensePerformer({
    required this.actor,
    super.fhirExtension,
    this.function,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory MedicationDispensePerformer.fromJson(Map<String, dynamic> json) {
    return MedicationDispensePerformer(
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
  MedicationDispensePerformer copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    CodeableConcept? function,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return MedicationDispensePerformer(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      function: function ?? this.function,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

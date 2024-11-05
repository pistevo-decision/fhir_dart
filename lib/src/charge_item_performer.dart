part of '../fhir_dart.dart';

/// Who performed charged service
/// Indicates who or what performed or participated in the charged service.
class ChargeItemPerformer extends BackboneElement implements FhirResource {
  /// Individual who was performing
  /// The device, practitioner, etc. who performed or participated in the service.
  final Reference actor;

  /// What type of performance was done
  /// Describes the type of performance or participation(e.g. primary surgeon, anesthesiologiest, etc.).
  final CodeableConcept? function;
  ChargeItemPerformer({
    required this.actor,
    super.fhirExtension,
    this.function,
    super.id,
    super.modifierExtension,
  });

  @override
  factory ChargeItemPerformer.fromJson(Map<String, dynamic> json) {
    return ChargeItemPerformer(
      actor: Reference.fromJson((json['actor'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      function: json['function'] != null
          ? CodeableConcept.fromJson(
              (json['function'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
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
  ChargeItemPerformer copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    CodeableConcept? function,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ChargeItemPerformer(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      function: function ?? this.function,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

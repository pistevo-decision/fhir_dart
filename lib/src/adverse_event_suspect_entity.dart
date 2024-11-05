part of '../fhir_dart.dart';

/// The suspected agent causing the adverse event
/// Describes the entity that is suspected to have caused the adverse event.
class AdverseEventSuspectEntity extends BackboneElement
    implements FhirResource {
  /// Information on the possible cause of the event.
  final List<AdverseEventSuspectEntityCausality>? causality;

  /// Refers to the specific entity that caused the adverse event
  /// Identifies the actual instance of what caused the adverse event.  May be a substance, medication, medication administration, medication statement or a device.
  final Reference instance;
  AdverseEventSuspectEntity({
    this.causality,
    super.fhirExtension,
    super.id,
    required this.instance,
    super.modifierExtension,
  });

  @override
  factory AdverseEventSuspectEntity.fromJson(Map<String, dynamic> json) {
    return AdverseEventSuspectEntity(
      causality: (json['causality'] as List<dynamic>?)
          ?.map((e) => AdverseEventSuspectEntityCausality.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      instance:
          Reference.fromJson((json['instance'] as Map).cast<String, dynamic>()),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'causality': causality?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'instance': instance.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  AdverseEventSuspectEntity copyWith({
    List<AdverseEventSuspectEntityCausality>? causality,
    List<Extension>? fhirExtension,
    String? id,
    Reference? instance,
    List<Extension>? modifierExtension,
  }) {
    return AdverseEventSuspectEntity(
      causality: causality ?? this.causality,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      instance: instance ?? this.instance,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

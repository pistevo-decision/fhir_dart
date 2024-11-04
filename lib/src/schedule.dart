part of '../fhir_dart.dart';

/// A container for slots of time that may be available for booking appointments.
class Schedule extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Schedule';

  /// Whether this schedule is in active use
  /// Whether this schedule record is in active use or should not be used (such as was entered in error).
  /// This element is labeled as a modifier because it may be used to mark that the resource was created in error.
  final bool? active;

  /// Resource(s) that availability information is being provided for
  /// Slots that reference this schedule resource provide the availability details to these referenced resource(s).
  /// The capacity to support multiple referenced resource types should be used in cases where the specific resources themselves cannot be scheduled without the other, and thus only make sense to the system exposing them as a group. Common examples of this are where the combination of a practitioner and a room (Location) are always required by a system.
  final List<Reference> actor;

  /// Comments on availability
  /// Comments on the availability to describe any extended information. Such as custom constraints on the slots that may be associated.
  final String? comment;

  /// External Ids for this item.
  final List<Identifier>? identifier;

  /// Period of time covered by schedule
  /// The period of time that the slots that reference this Schedule resource cover (even if none exist). These  cover the amount of time that an organization's planning horizon; the interval for which they are currently accepting appointments. This does not define a "template" for planning outside these dates.
  final Period? planningHorizon;

  /// High-level category
  /// A broad categorization of the service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceCategory;

  /// Specific service
  /// The specific service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceType;

  /// Type of specialty needed
  /// The specialty of a practitioner that would be required to perform the service requested in this appointment.
  final List<CodeableConcept>? specialty;
  Schedule({
    this.active,
    required this.actor,
    this.comment,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.planningHorizon,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    super.text,
  });

  @override
  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      active: json['active'] as bool?,
      actor: (json['actor'] as List<dynamic>)
          .map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      planningHorizon: json['planningHorizon'] != null
          ? Period.fromJson(json['planningHorizon'] as Map<String, dynamic>)
          : null,
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'active': active,
        'actor': actor.map((e) => e.toJson()).toList(),
        'comment': comment,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'planningHorizon': planningHorizon?.toJson(),
        'serviceCategory': serviceCategory?.map((e) => e.toJson()).toList(),
        'serviceType': serviceType?.map((e) => e.toJson()).toList(),
        'specialty': specialty?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Schedule copyWith({
    bool? active,
    List<Reference>? actor,
    String? comment,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Period? planningHorizon,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    Narrative? text,
  }) {
    return Schedule(
      active: active ?? this.active,
      actor: actor ?? this.actor,
      comment: comment ?? this.comment,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      planningHorizon: planningHorizon ?? this.planningHorizon,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      text: text ?? this.text,
    );
  }
}

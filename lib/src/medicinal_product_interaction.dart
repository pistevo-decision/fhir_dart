part of '../fhir_dart.dart';

/// The interactions of the medicinal product with other medicinal products, or other forms of interactions.
class MedicinalProductInteraction extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicinalProductInteraction';

  /// The interaction described.
  final String? description;

  /// The effect of the interaction, for example "reduced gastric absorption of primary medication".
  final CodeableConcept? effect;

  /// The incidence of the interaction, e.g. theoretical, observed.
  final CodeableConcept? incidence;

  /// The specific medication, food or laboratory test that interacts.
  final List<MedicinalProductInteractionInteractant>? interactant;

  /// Actions for managing the interaction.
  final CodeableConcept? management;

  /// The medication for which this is a described interaction.
  final List<Reference>? subject;

  /// The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.
  final CodeableConcept? type;
  MedicinalProductInteraction({
    super.contained,
    this.description,
    this.effect,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.incidence,
    this.interactant,
    super.language,
    this.management,
    super.meta,
    super.modifierExtension,
    this.subject,
    super.text,
    this.type,
  });

  @override
  factory MedicinalProductInteraction.fromJson(Map<String, dynamic> json) {
    return MedicinalProductInteraction(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      effect: json['effect'] != null
          ? CodeableConcept.fromJson(json['effect'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      incidence: json['incidence'] != null
          ? CodeableConcept.fromJson(json['incidence'] as Map<String, dynamic>)
          : null,
      interactant: (json['interactant'] as List<dynamic>?)
          ?.map((e) => MedicinalProductInteractionInteractant.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      management: json['management'] != null
          ? CodeableConcept.fromJson(json['management'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description,
        'effect': effect?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'incidence': incidence?.toJson(),
        'interactant': interactant?.map((e) => e.toJson()).toList(),
        'language': language,
        'management': management?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'subject': subject?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  MedicinalProductInteraction copyWith({
    List<Resource>? contained,
    String? description,
    CodeableConcept? effect,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    CodeableConcept? incidence,
    List<MedicinalProductInteractionInteractant>? interactant,
    String? language,
    CodeableConcept? management,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Reference>? subject,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return MedicinalProductInteraction(
      contained: contained ?? this.contained,
      description: description ?? this.description,
      effect: effect ?? this.effect,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      incidence: incidence ?? this.incidence,
      interactant: interactant ?? this.interactant,
      language: language ?? this.language,
      management: management ?? this.management,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}

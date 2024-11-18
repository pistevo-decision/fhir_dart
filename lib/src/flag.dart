part of '../fhir_dart.dart';

/// Prospective warnings of potential issues when providing care to the patient.
class Flag extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Flag';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Flag creator
  /// The person, organization or device that created the flag.
  final Reference? author;

  /// Clinical, administrative, etc.
  /// Allows a flag to be divided into different categories like clinical, administrative etc. Intended to be used as a means of filtering which flags are displayed to particular user or in a given context.
  /// The value set will often need to be adjusted based on local business rules and usage context.
  final List<CodeableConcept>? category;

  /// Coded or textual message to display to user
  /// The coded value or textual component of the flag to display to the user.
  /// If non-coded, use CodeableConcept.text.  This element should always be included in the narrative.
  final CodeableConcept code;

  /// Alert relevant during encounter
  /// This alert is only relevant during the encounter.
  /// If both Flag.encounter and Flag.period are valued, then Flag.period.start shall not be before Encounter.period.start and Flag.period.end shall not be after Encounter.period.end.
  final Reference? encounter;

  /// Business identifiers assigned to this flag by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// Time period when flag is active
  /// The period of time from the activation of the flag to inactivation of the flag. If the flag is active, the end of the period should be unspecified.
  final Period? period;

  /// Supports basic workflow.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'inactive', 'entered-in-error'
  /// Who/What is flag about?
  /// The patient, location, group, organization, or practitioner etc. this is about record this flag is associated with.
  final Reference subject;
  Flag({
    this.author,
    this.category,
    required this.code,
    super.contained,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.period,
    required this.status,
    required this.subject,
    super.text,
  });

  @override
  factory Flag.fromJson(Map<String, dynamic> json) {
    return Flag(
      author: json['author'] != null
          ? Reference.fromJson((json['author'] as Map).cast<String, dynamic>())
          : null,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'author': author?.toJson(),
        'category': category?.map((e) => e.toJson()).toList(),
        'code': code.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'status': status,
        'subject': subject.toJson(),
        'text': text?.toJson(),
      };

  @override
  Flag copyWith({
    Reference? author,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Period? period,
    String? status,
    Reference? subject,
    Narrative? text,
  }) {
    return Flag(
      author: author ?? this.author,
      category: category ?? this.category,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}

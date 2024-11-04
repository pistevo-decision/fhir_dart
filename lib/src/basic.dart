part of '../fhir_dart.dart';

/// Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing resource, and custom resources not appropriate for inclusion in the FHIR specification.
/// Need some way to safely (without breaking interoperability) allow implementers to exchange content not supported by the initial set of declared resources.
class Basic extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Basic';

  /// Who created
  /// Indicates who was responsible for creating the resource instance.
  final Reference? author;

  /// Kind of Resource
  /// Identifies the 'type' of resource - equivalent to the resource name for other resources.
  /// Because resource references will only be able to indicate 'Basic', the type of reference will need to be specified in a Profile identified as part of the resource.  Refer to the resource notes section for information on appropriate terminologies for this code.
  /// This element is labeled as a modifier because it defines the meaning of the resource and cannot be ignored.
  final CodeableConcept code;

  /// When created
  /// Identifies when the resource was first created.
  final String? created;

  /// Business identifier
  /// Identifier assigned to the resource for business purposes, outside the context of FHIR.
  final List<Identifier>? identifier;

  /// Identifies the focus of this resource
  /// Identifies the patient, practitioner, device or any other resource that is the "focus" of this resource.
  /// Optional as not all potential resources will have subjects.  Resources associated with multiple subjects can handle this via extension.
  final Reference? subject;
  Basic({
    this.author,
    required this.code,
    super.contained,
    this.created,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.subject,
    super.text,
  });

  @override
  factory Basic.fromJson(Map<String, dynamic> json) {
    return Basic(
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] as String?,
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
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'author': author?.toJson(),
        'code': code.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'subject': subject?.toJson(),
        'text': text?.toJson(),
      };

  @override
  Basic copyWith({
    Reference? author,
    CodeableConcept? code,
    List<Resource>? contained,
    String? created,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? subject,
    Narrative? text,
  }) {
    return Basic(
      author: author ?? this.author,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      created: created ?? this.created,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}

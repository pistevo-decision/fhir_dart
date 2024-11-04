part of '../fhir_dart.dart';

/// This resource provides enrollment and plan details from the processing of an EnrollmentRequest resource.
class EnrollmentResponse extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'EnrollmentResponse';

  /// Creation date
  /// The date when the enclosed suite of services were performed or completed.
  final String? created;

  /// Disposition Message
  /// A description of the status of the adjudication.
  final String? disposition;

  /// Business Identifier
  /// The Response business identifier.
  final List<Identifier>? identifier;

  /// Insurer
  /// The Insurer who produced this adjudicated response.
  final Reference? organization;

  /// Processing status: error, complete.
  final String?
      outcome; // Possible values: 'queued', 'complete', 'error', 'partial'
  /// Claim reference
  /// Original request resource reference.
  final Reference? request;

  /// Responsible practitioner
  /// The practitioner who is responsible for the services rendered to the patient.
  final Reference? requestProvider;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains codes that mark the response as not currently valid.
  final String?
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  EnrollmentResponse({
    super.contained,
    this.created,
    this.disposition,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.organization,
    this.outcome,
    this.request,
    this.requestProvider,
    this.status,
    super.text,
  });

  @override
  factory EnrollmentResponse.fromJson(Map<String, dynamic> json) {
    return EnrollmentResponse(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] as String?,
      disposition: json['disposition'] as String?,
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
      organization: json['organization'] != null
          ? Reference.fromJson(json['organization'] as Map<String, dynamic>)
          : null,
      outcome: json['outcome'] as String?,
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      requestProvider: json['requestProvider'] != null
          ? Reference.fromJson(json['requestProvider'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'disposition': disposition,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'organization': organization?.toJson(),
        'outcome': outcome,
        'request': request?.toJson(),
        'requestProvider': requestProvider?.toJson(),
        'status': status,
        'text': text?.toJson(),
      };

  @override
  EnrollmentResponse copyWith({
    List<Resource>? contained,
    String? created,
    String? disposition,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? organization,
    String? outcome,
    Reference? request,
    Reference? requestProvider,
    String? status,
    Narrative? text,
  }) {
    return EnrollmentResponse(
      contained: contained ?? this.contained,
      created: created ?? this.created,
      disposition: disposition ?? this.disposition,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organization: organization ?? this.organization,
      outcome: outcome ?? this.outcome,
      request: request ?? this.request,
      requestProvider: requestProvider ?? this.requestProvider,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}

part of '../fhir_dart.dart';

 /// This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
class EnrollmentRequest extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'EnrollmentRequest';
   /// The subject to be enrolled
   /// Patient Resource.
  final Reference? candidate;
   /// Insurance information
   /// Reference to the program or plan identification, underwriter or payor.
  final Reference? coverage;
   /// Creation date
   /// The date when this resource was created.
  final String? created;
   /// Business Identifier
   /// The Response business identifier.
  final List<Identifier>? identifier;
   /// Target
   /// The Insurer who is target  of the request.
  final Reference? insurer;
   /// Responsible practitioner
   /// The practitioner who is responsible for the services rendered to the patient.
  final Reference? provider;
   /// The status of the resource instance.
   /// This element is labeled as a modifier because the status contains codes that mark the request as not currently valid.
  final String? status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  EnrollmentRequest({
    this.candidate,
    super.contained,
    this.coverage,
    this.created,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.insurer,
    super.language,
    super.meta,
    super.modifierExtension,
    this.provider,
    this.status,
    super.text,
  });
  
  @override
  factory EnrollmentRequest.fromJson(Map<String, dynamic> json) {
    return EnrollmentRequest(
      candidate: json['candidate'] != null ? Reference.fromJson(json['candidate'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      coverage: json['coverage'] != null ? Reference.fromJson(json['coverage'] as Map<String, dynamic>) : null,
      created: json['created'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      insurer: json['insurer'] != null ? Reference.fromJson(json['insurer'] as Map<String, dynamic>) : null,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      provider: json['provider'] != null ? Reference.fromJson(json['provider'] as Map<String, dynamic>) : null,
      status: json['status'] as String?,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'candidate': candidate?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'coverage': coverage?.toJson(),
      'created': created,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'insurer': insurer?.toJson(),
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'provider': provider?.toJson(),
      'status': status,
      'text': text?.toJson(),
    };
  
  @override
  EnrollmentRequest copyWith({
    Reference? candidate,
    List<Resource>? contained,
    Reference? coverage,
    String? created,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    Reference? insurer,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? provider,
    String? status,
    Narrative? text,
  }) {
    return EnrollmentRequest(
      candidate: candidate ?? this.candidate,
      contained: contained ?? this.contained,
      coverage: coverage ?? this.coverage,
      created: created ?? this.created,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      insurer: insurer ?? this.insurer,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      provider: provider ?? this.provider,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}

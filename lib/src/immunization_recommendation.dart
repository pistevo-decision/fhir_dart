part of '../fhir_dart.dart';

 /// A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional supporting justification.
class ImmunizationRecommendation extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'ImmunizationRecommendation';
   /// Who is responsible for protocol
   /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;
   /// Date recommendation(s) created
   /// The date the immunization recommendation(s) were created.
  final String date;
   /// Business identifier
   /// A unique identifier assigned to this particular recommendation record.
  final List<Identifier>? identifier;
   /// Who this profile is for
   /// The patient the recommendation(s) are for.
  final Reference patient;
   /// Vaccine administration recommendations.
  final List<ImmunizationRecommendationRecommendation> recommendation;
  ImmunizationRecommendation({
    this.authority,
    super.contained,
    required this.date,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.patient,
    required this.recommendation,
    super.text,
  });
  
  @override
  factory ImmunizationRecommendation.fromJson(Map<String, dynamic> json) {
    return ImmunizationRecommendation(
      authority: json['authority'] != null ? Reference.fromJson(json['authority'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      date: json['date'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      recommendation: (json['recommendation'] as List<dynamic>).map((e) => ImmunizationRecommendationRecommendation.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'authority': authority?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'date': date,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'patient': patient.toJson(),
      'recommendation': recommendation.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  ImmunizationRecommendation copyWith({
    Reference? authority,
    List<Resource>? contained,
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? patient,
    List<ImmunizationRecommendationRecommendation>? recommendation,
    Narrative? text,
  }) {
    return ImmunizationRecommendation(
      authority: authority ?? this.authority,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patient: patient ?? this.patient,
      recommendation: recommendation ?? this.recommendation,
      text: text ?? this.text,
    );
  }
}

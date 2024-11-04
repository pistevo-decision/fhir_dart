part of '../fhir_dart.dart';

/// Need to make sure we encompass public health studies.
/// A physical entity which is the primary unit of operational and/or administrative interest in a study.
class ResearchSubject extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'ResearchSubject';

  /// What path was followed
  /// The name of the arm in the study the subject actually followed as part of this study.
  final String? actualArm;

  /// What path should be followed
  /// The name of the arm in the study the subject is expected to follow as part of this study.
  final String? assignedArm;

  /// Agreement to participate in study
  /// A record of the patient's informed agreement to participate in the study.
  final Reference? consent;

  /// Business Identifier for research subject in a study
  /// Identifiers assigned to this research subject for a study.
  final List<Identifier>? identifier;

  /// Who is part of study
  /// The record of the person or animal who is involved in the study.
  final Reference individual;

  /// Start and end of participation
  /// The dates the subject began and ended their participation in the study.
  final Period? period;

  /// The current state of the subject.
  final String
      status; // Possible values: 'candidate', 'eligible', 'follow-up', 'ineligible', 'not-registered', 'off-study', 'on-study', 'on-study-intervention', 'on-study-observation', 'pending-on-study', 'potential-candidate', 'screening', 'withdrawn'
  /// Study subject is part of
  /// Reference to the study the subject is participating in.
  final Reference study;
  ResearchSubject({
    this.actualArm,
    this.assignedArm,
    this.consent,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    required this.individual,
    super.language,
    super.meta,
    super.modifierExtension,
    this.period,
    required this.status,
    required this.study,
    super.text,
  });

  @override
  factory ResearchSubject.fromJson(Map<String, dynamic> json) {
    return ResearchSubject(
      actualArm: json['actualArm'] as String?,
      assignedArm: json['assignedArm'] as String?,
      consent: json['consent'] != null
          ? Reference.fromJson(json['consent'] as Map<String, dynamic>)
          : null,
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
      individual:
          Reference.fromJson(json['individual'] as Map<String, dynamic>),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      study: Reference.fromJson(json['study'] as Map<String, dynamic>),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actualArm': actualArm,
        'assignedArm': assignedArm,
        'consent': consent?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'individual': individual.toJson(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'status': status,
        'study': study.toJson(),
        'text': text?.toJson(),
      };

  @override
  ResearchSubject copyWith({
    String? actualArm,
    String? assignedArm,
    Reference? consent,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    Reference? individual,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Period? period,
    String? status,
    Reference? study,
    Narrative? text,
  }) {
    return ResearchSubject(
      actualArm: actualArm ?? this.actualArm,
      assignedArm: assignedArm ?? this.assignedArm,
      consent: consent ?? this.consent,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      individual: individual ?? this.individual,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      status: status ?? this.status,
      study: study ?? this.study,
      text: text ?? this.text,
    );
  }
}

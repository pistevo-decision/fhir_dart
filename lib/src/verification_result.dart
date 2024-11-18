part of '../fhir_dart.dart';

/// Describes validation requirements, source(s), status and dates for one or more elements.
class VerificationResult extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'VerificationResult';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Information about the entity attesting to information.
  final VerificationResultAttestation? attestation;

  /// fatal | warn | rec-only | none
  /// The result if validation fails (fatal; warning; record only; none).
  final CodeableConcept? failureAction;

  /// Frequency of revalidation.
  final Timing? frequency;

  /// The date/time validation was last completed (including failed validations).
  final String? lastPerformed;

  /// none | initial | periodic
  /// The frequency with which the target must be validated (none; initial; periodic).
  final CodeableConcept? need;

  /// The date when target is next validated, if appropriate.
  final String? nextScheduled;

  /// Information about the primary source(s) involved in validation.
  final List<VerificationResultPrimarySource>? primarySource;

  /// The validation status of the target (attested; validated; in process; requires revalidation; validation failed; revalidation failed).
  final String
      status; // Possible values: 'attested', 'validated', 'in-process', 'req-revalid', 'val-fail', 'reval-fail'
  /// When the validation status was updated.
  final String? statusDate;

  /// A resource that was validated.
  final List<Reference>? target;

  /// The fhirpath location(s) within the resource that was validated.
  final List<String>? targetLocation;

  /// The primary process by which the target is validated (edit check; value set; primary source; multiple sources; standalone; in context).
  final List<CodeableConcept>? validationProcess;

  /// nothing | primary | multiple
  /// What the target is validated against (nothing; primary source; multiple sources).
  final CodeableConcept? validationType;

  /// Information about the entity validating information.
  final List<VerificationResultValidator>? validator;
  VerificationResult({
    this.attestation,
    super.contained,
    super.fhirExtension,
    this.failureAction,
    this.frequency,
    super.id,
    super.implicitRules,
    super.language,
    this.lastPerformed,
    super.meta,
    super.modifierExtension,
    this.need,
    this.nextScheduled,
    this.primarySource,
    required this.status,
    this.statusDate,
    this.target,
    this.targetLocation,
    super.text,
    this.validationProcess,
    this.validationType,
    this.validator,
  });

  @override
  factory VerificationResult.fromJson(Map<String, dynamic> json) {
    return VerificationResult(
      attestation: json['attestation'] != null
          ? VerificationResultAttestation.fromJson(
              (json['attestation'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      failureAction: json['failureAction'] != null
          ? CodeableConcept.fromJson(
              (json['failureAction'] as Map).cast<String, dynamic>())
          : null,
      frequency: json['frequency'] != null
          ? Timing.fromJson((json['frequency'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      lastPerformed: json['lastPerformed'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      need: json['need'] != null
          ? CodeableConcept.fromJson(
              (json['need'] as Map).cast<String, dynamic>())
          : null,
      nextScheduled: json['nextScheduled'] as String?,
      primarySource: (json['primarySource'] as List<dynamic>?)
          ?.map((e) => VerificationResultPrimarySource.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      statusDate: json['statusDate'] as String?,
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      targetLocation: (json['targetLocation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      validationProcess: (json['validationProcess'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      validationType: json['validationType'] != null
          ? CodeableConcept.fromJson(
              (json['validationType'] as Map).cast<String, dynamic>())
          : null,
      validator: (json['validator'] as List<dynamic>?)
          ?.map((e) => VerificationResultValidator.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'attestation': attestation?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'failureAction': failureAction?.toJson(),
        'frequency': frequency?.toJson(),
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'lastPerformed': lastPerformed,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'need': need?.toJson(),
        'nextScheduled': nextScheduled,
        'primarySource': primarySource?.map((e) => e.toJson()).toList(),
        'status': status,
        'statusDate': statusDate,
        'target': target?.map((e) => e.toJson()).toList(),
        'targetLocation': targetLocation?.map((e) => e).toList(),
        'text': text?.toJson(),
        'validationProcess': validationProcess?.map((e) => e.toJson()).toList(),
        'validationType': validationType?.toJson(),
        'validator': validator?.map((e) => e.toJson()).toList(),
      };

  @override
  VerificationResult copyWith({
    VerificationResultAttestation? attestation,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    CodeableConcept? failureAction,
    Timing? frequency,
    String? id,
    String? implicitRules,
    String? language,
    String? lastPerformed,
    Meta? meta,
    List<Extension>? modifierExtension,
    CodeableConcept? need,
    String? nextScheduled,
    List<VerificationResultPrimarySource>? primarySource,
    String? status,
    String? statusDate,
    List<Reference>? target,
    List<String>? targetLocation,
    Narrative? text,
    List<CodeableConcept>? validationProcess,
    CodeableConcept? validationType,
    List<VerificationResultValidator>? validator,
  }) {
    return VerificationResult(
      attestation: attestation ?? this.attestation,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      failureAction: failureAction ?? this.failureAction,
      frequency: frequency ?? this.frequency,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      lastPerformed: lastPerformed ?? this.lastPerformed,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      need: need ?? this.need,
      nextScheduled: nextScheduled ?? this.nextScheduled,
      primarySource: primarySource ?? this.primarySource,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      target: target ?? this.target,
      targetLocation: targetLocation ?? this.targetLocation,
      text: text ?? this.text,
      validationProcess: validationProcess ?? this.validationProcess,
      validationType: validationType ?? this.validationType,
      validator: validator ?? this.validator,
    );
  }
}

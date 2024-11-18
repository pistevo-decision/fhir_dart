part of '../fhir_dart.dart';

/// The regulatory authorization of a medicinal product.
class MedicinalProductAuthorization extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'MedicinalProductAuthorization';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// The country in which the marketing authorization has been granted.
  final List<CodeableConcept>? country;

  /// A period of time after authorization before generic product applicatiosn can be submitted.
  final Period? dataExclusivityPeriod;

  /// The date when the first authorization was granted by a Medicines Regulatory Agency.
  final String? dateOfFirstAuthorization;

  /// Marketing Authorization Holder.
  final Reference? holder;

  /// Business identifier for the marketing authorization, as assigned by a regulator.
  final List<Identifier>? identifier;

  /// Date of first marketing authorization for a company's new medicinal product in any country in the World.
  final String? internationalBirthDate;

  /// Jurisdiction within a country.
  final List<CodeableConcept>? jurisdiction;

  /// Authorization in areas within a country.
  final List<MedicinalProductAuthorizationJurisdictionalAuthorization>?
      jurisdictionalAuthorization;

  /// The legal framework against which this authorization is granted.
  final CodeableConcept? legalBasis;

  /// The regulatory procedure for granting or amending a marketing authorization.
  final MedicinalProductAuthorizationProcedure? procedure;

  /// Medicines Regulatory Agency.
  final Reference? regulator;

  /// The date when a suspended the marketing or the marketing authorization of the product is anticipated to be restored.
  final String? restoreDate;

  /// The status of the marketing authorization.
  final CodeableConcept? status;

  /// The date at which the given status has become applicable.
  final String? statusDate;

  /// The medicinal product that is being authorized.
  final Reference? subject;

  /// The beginning of the time period in which the marketing authorization is in the specific status shall be specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format.
  final Period? validityPeriod;
  MedicinalProductAuthorization({
    super.contained,
    this.country,
    this.dataExclusivityPeriod,
    this.dateOfFirstAuthorization,
    super.fhirExtension,
    this.holder,
    super.id,
    this.identifier,
    super.implicitRules,
    this.internationalBirthDate,
    this.jurisdiction,
    this.jurisdictionalAuthorization,
    super.language,
    this.legalBasis,
    super.meta,
    super.modifierExtension,
    this.procedure,
    this.regulator,
    this.restoreDate,
    this.status,
    this.statusDate,
    this.subject,
    super.text,
    this.validityPeriod,
  });

  @override
  factory MedicinalProductAuthorization.fromJson(Map<String, dynamic> json) {
    return MedicinalProductAuthorization(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      country: (json['country'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dataExclusivityPeriod: json['dataExclusivityPeriod'] != null
          ? Period.fromJson(
              (json['dataExclusivityPeriod'] as Map).cast<String, dynamic>())
          : null,
      dateOfFirstAuthorization: json['dateOfFirstAuthorization'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      holder: json['holder'] != null
          ? Reference.fromJson((json['holder'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      internationalBirthDate: json['internationalBirthDate'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      jurisdictionalAuthorization: (json['jurisdictionalAuthorization']
              as List<dynamic>?)
          ?.map((e) =>
              MedicinalProductAuthorizationJurisdictionalAuthorization.fromJson(
                  (e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      legalBasis: json['legalBasis'] != null
          ? CodeableConcept.fromJson(
              (json['legalBasis'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      procedure: json['procedure'] != null
          ? MedicinalProductAuthorizationProcedure.fromJson(
              (json['procedure'] as Map).cast<String, dynamic>())
          : null,
      regulator: json['regulator'] != null
          ? Reference.fromJson(
              (json['regulator'] as Map).cast<String, dynamic>())
          : null,
      restoreDate: json['restoreDate'] as String?,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              (json['status'] as Map).cast<String, dynamic>())
          : null,
      statusDate: json['statusDate'] as String?,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(
              (json['validityPeriod'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'country': country?.map((e) => e.toJson()).toList(),
        'dataExclusivityPeriod': dataExclusivityPeriod?.toJson(),
        'dateOfFirstAuthorization': dateOfFirstAuthorization,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'holder': holder?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'internationalBirthDate': internationalBirthDate,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'jurisdictionalAuthorization':
            jurisdictionalAuthorization?.map((e) => e.toJson()).toList(),
        'language': language,
        'legalBasis': legalBasis?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'procedure': procedure?.toJson(),
        'regulator': regulator?.toJson(),
        'restoreDate': restoreDate,
        'status': status?.toJson(),
        'statusDate': statusDate,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'validityPeriod': validityPeriod?.toJson(),
      };

  @override
  MedicinalProductAuthorization copyWith({
    List<Resource>? contained,
    List<CodeableConcept>? country,
    Period? dataExclusivityPeriod,
    String? dateOfFirstAuthorization,
    List<Extension>? fhirExtension,
    Reference? holder,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? internationalBirthDate,
    List<CodeableConcept>? jurisdiction,
    List<MedicinalProductAuthorizationJurisdictionalAuthorization>?
        jurisdictionalAuthorization,
    String? language,
    CodeableConcept? legalBasis,
    Meta? meta,
    List<Extension>? modifierExtension,
    MedicinalProductAuthorizationProcedure? procedure,
    Reference? regulator,
    String? restoreDate,
    CodeableConcept? status,
    String? statusDate,
    Reference? subject,
    Narrative? text,
    Period? validityPeriod,
  }) {
    return MedicinalProductAuthorization(
      contained: contained ?? this.contained,
      country: country ?? this.country,
      dataExclusivityPeriod:
          dataExclusivityPeriod ?? this.dataExclusivityPeriod,
      dateOfFirstAuthorization:
          dateOfFirstAuthorization ?? this.dateOfFirstAuthorization,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      holder: holder ?? this.holder,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      internationalBirthDate:
          internationalBirthDate ?? this.internationalBirthDate,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      jurisdictionalAuthorization:
          jurisdictionalAuthorization ?? this.jurisdictionalAuthorization,
      language: language ?? this.language,
      legalBasis: legalBasis ?? this.legalBasis,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      procedure: procedure ?? this.procedure,
      regulator: regulator ?? this.regulator,
      restoreDate: restoreDate ?? this.restoreDate,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      validityPeriod: validityPeriod ?? this.validityPeriod,
    );
  }
}

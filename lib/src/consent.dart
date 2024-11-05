part of '../fhir_dart.dart';

/// Broadly, there are 3 key areas of consent for patients: Consent around sharing information (aka Privacy Consent Directive - Authorization to Collect, Use, or Disclose information), consent for specific treatment, or kinds of treatment, and general advance care directives.
/// A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
class Consent extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Consent';

  /// Classification of the consent statement - for indexing/retrieval
  /// A classification of the type of consents found in the statement. This element supports indexing and retrieval of consent statements.
  final List<CodeableConcept> category;

  /// When this Consent was created or indexed
  /// When this  Consent was issued / created / indexed.
  /// This is not the time of the original consent, but the time that this statement was made or derived.
  final String? dateTime;

  /// Identifier for this record (external references)
  /// Unique identifier for this copy of the Consent Statement.
  /// This identifier identifies this copy of the consent. Where this identifier is also used elsewhere as the identifier for a consent record (e.g. a CDA consent document) then the consent details are expected to be the same.
  final List<Identifier>? identifier;

  /// Custodian of the consent
  /// The organization that manages the consent, and the framework within which it is executed.
  final List<Reference>? organization;

  /// Who the consent applies to
  /// The patient/healthcare consumer to whom this consent applies.
  /// Commonly, the patient the consent pertains to is the author, but for young and old people, it may be some other person.
  final Reference? patient;

  /// Who is agreeing to the policy and rules
  /// Either the Grantor, which is the entity responsible for granting the rights listed in a Consent Directive or the Grantee, which is the entity responsible for complying with the Consent Directive, including any obligations or limitations on authorizations and enforcement of prohibitions.
  /// Commonly, the patient the consent pertains to is the consentor, but particularly for young and old people, it may be some other person - e.g. a legal guardian.
  final List<Reference>? performer;

  /// Policies covered by this consent
  /// The references to the policies that are included in this consent scope. Policies may be organizational, but are often defined jurisdictionally, or in law.
  final List<ConsentPolicy>? policy;

  /// Regulation that this consents to
  /// A reference to the specific base computable regulation or policy.
  /// If the policyRule is absent, computable consent would need to be constructed from the elements of the Consent resource.
  final CodeableConcept? policyRule;

  /// Constraints to the base Consent.policyRule
  /// An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
  final ConsentProvision? provision;

  /// Which of the four areas this resource covers (extensible)
  /// A selector of the type of consent being presented: ADR, Privacy, Treatment, Research.  This list is now extensible.
  final CodeableConcept scope;

  /// Source from which this consent is taken
  /// The source on which this consent statement is based. The source might be a scanned original paper form, or a reference to a consent that links back to such a source, a reference to a document repository (e.g. XDS) that stores the original consent document.
  /// The source can be contained inline (Attachment), referenced directly (Consent), referenced in a consent repository (DocumentReference), or simply by an identifier (Identifier), e.g. a CDA document id.
  final Attachment? sourceAttachment;

  /// Source from which this consent is taken
  /// The source on which this consent statement is based. The source might be a scanned original paper form, or a reference to a consent that links back to such a source, a reference to a document repository (e.g. XDS) that stores the original consent document.
  /// The source can be contained inline (Attachment), referenced directly (Consent), referenced in a consent repository (DocumentReference), or simply by an identifier (Identifier), e.g. a CDA document id.
  final Reference? sourceReference;

  /// Indicates the current state of this consent.
  /// This element is labeled as a modifier because the status contains the codes rejected and entered-in-error that mark the Consent as not currently valid.
  final String
      status; // Possible values: 'draft', 'proposed', 'active', 'rejected', 'inactive', 'entered-in-error'
  /// Consent Verified by patient or family
  /// Whether a treatment instruction (e.g. artificial respiration yes or no) was verified with the patient, his/her family or another authorized person.
  final List<ConsentVerification>? verification;
  Consent({
    required this.category,
    super.contained,
    this.dateTime,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.organization,
    this.patient,
    this.performer,
    this.policy,
    this.policyRule,
    this.provision,
    required this.scope,
    this.sourceAttachment,
    this.sourceReference,
    required this.status,
    super.text,
    this.verification,
  });

  @override
  factory Consent.fromJson(Map<String, dynamic> json) {
    return Consent(
      category: (json['category'] as List<dynamic>)
          .map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dateTime: json['dateTime'] as String?,
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
      organization: (json['organization'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      patient: json['patient'] != null
          ? Reference.fromJson((json['patient'] as Map).cast<String, dynamic>())
          : null,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      policy: (json['policy'] as List<dynamic>?)
          ?.map(
              (e) => ConsentPolicy.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      policyRule: json['policyRule'] != null
          ? CodeableConcept.fromJson(
              (json['policyRule'] as Map).cast<String, dynamic>())
          : null,
      provision: json['provision'] != null
          ? ConsentProvision.fromJson(
              (json['provision'] as Map).cast<String, dynamic>())
          : null,
      scope: CodeableConcept.fromJson(
          (json['scope'] as Map).cast<String, dynamic>()),
      sourceAttachment: json['sourceAttachment'] != null
          ? Attachment.fromJson(
              (json['sourceAttachment'] as Map).cast<String, dynamic>())
          : null,
      sourceReference: json['sourceReference'] != null
          ? Reference.fromJson(
              (json['sourceReference'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      verification: (json['verification'] as List<dynamic>?)
          ?.map((e) =>
              ConsentVerification.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'category': category.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'dateTime': dateTime,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'organization': organization?.map((e) => e.toJson()).toList(),
        'patient': patient?.toJson(),
        'performer': performer?.map((e) => e.toJson()).toList(),
        'policy': policy?.map((e) => e.toJson()).toList(),
        'policyRule': policyRule?.toJson(),
        'provision': provision?.toJson(),
        'scope': scope.toJson(),
        'sourceAttachment': sourceAttachment?.toJson(),
        'sourceReference': sourceReference?.toJson(),
        'status': status,
        'text': text?.toJson(),
        'verification': verification?.map((e) => e.toJson()).toList(),
      };

  @override
  Consent copyWith({
    List<CodeableConcept>? category,
    List<Resource>? contained,
    String? dateTime,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Reference>? organization,
    Reference? patient,
    List<Reference>? performer,
    List<ConsentPolicy>? policy,
    CodeableConcept? policyRule,
    ConsentProvision? provision,
    CodeableConcept? scope,
    Attachment? sourceAttachment,
    Reference? sourceReference,
    String? status,
    Narrative? text,
    List<ConsentVerification>? verification,
  }) {
    return Consent(
      category: category ?? this.category,
      contained: contained ?? this.contained,
      dateTime: dateTime ?? this.dateTime,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organization: organization ?? this.organization,
      patient: patient ?? this.patient,
      performer: performer ?? this.performer,
      policy: policy ?? this.policy,
      policyRule: policyRule ?? this.policyRule,
      provision: provision ?? this.provision,
      scope: scope ?? this.scope,
      sourceAttachment: sourceAttachment ?? this.sourceAttachment,
      sourceReference: sourceReference ?? this.sourceReference,
      status: status ?? this.status,
      text: text ?? this.text,
      verification: verification ?? this.verification,
    );
  }
}

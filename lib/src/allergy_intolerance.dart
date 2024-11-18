part of '../fhir_dart.dart';

/// Substances include, but are not limited to: a therapeutic substance administered correctly at an appropriate dosage for the individual; food; material derived from plants or animals; or venom from insect stings.
/// Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.
/// To record a clinical assessment of a propensity, or potential risk to an individual, of an adverse reaction upon future exposure to the specified substance, or class of substance.
class AllergyIntolerance extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'AllergyIntolerance';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Source of the information about the allergy
  /// The source of the information about the allergy that is recorded.
  /// The recorder takes responsibility for the content, but can reference the source from where they got it.
  final Reference? asserter;

  /// Category of the identified substance.
  /// This data element has been included because it is currently being captured in some clinical systems. This data can be derived from the substance where coding systems are used, and is effectively redundant in that situation.  When searching on category, consider the implications of AllergyIntolerance resources without a category.  For example, when searching on category = medication, medication allergies that don't have a category valued will not be returned.  Refer to [search](search.html) for more information on how to search category with a :missing modifier to get allergies that don't have a category.  Additionally, category should be used with caution because category can be subjective based on the sender.
  final List<String>?
      category; // Possible values: 'food', 'medication', 'environment', 'biologic'
  /// active | inactive | resolved
  /// The clinical status of the allergy or intolerance.
  /// Refer to [discussion](extensibility.html#Special-Case) if clincalStatus is missing data.
  /// The data type is CodeableConcept because clinicalStatus has some clinical judgment involved, such that there might need to be more specificity than the required FHIR value set allows. For example, a SNOMED coding might allow for additional specificity.
  final CodeableConcept? clinicalStatus;

  /// Code that identifies the allergy or intolerance
  /// Code for an allergy or intolerance statement (either a positive or a negated/excluded statement).  This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., "Latex"), an allergy or intolerance condition (e.g., "Latex allergy"), or a negated/excluded code for a specific substance or class (e.g., "No latex allergy") or a general or categorical negated statement (e.g.,  "No known allergy", "No known drug allergies").  Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'.  If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.
  /// It is strongly recommended that this element be populated using a terminology, where possible. For example, some terminologies used include RxNorm, SNOMED CT, DM+D, NDFRT, ICD-9, IDC-10, UNII, and ATC. Plain text should only be used if there is no appropriate terminology available. Additional details can be specified in the text.
  /// When a substance or product code is specified for the 'code' element, the "default" semantic context is that this is a positive statement of an allergy or intolerance (depending on the value of the 'type' element, if present) condition to the specified substance/product.  In the corresponding SNOMED CT allergy model, the specified substance/product is the target (destination) of the "Causative agent" relationship.
  /// The 'substanceExposureRisk' extension is available as a structured and more flexible alternative to the 'code' element for making positive or negative allergy or intolerance statements.  This extension provides the capability to make "no known allergy" (or "no risk of adverse reaction") statements regarding any coded substance/product (including cases when a pre-coordinated "no allergy to x" concept for that substance/product does not exist).  If the 'substanceExposureRisk' extension is present, the AllergyIntolerance.code element SHALL be omitted.
  final CodeableConcept? code;

  /// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
  /// The default criticality value for any propensity to an adverse reaction should be 'Low Risk', indicating at the very least a relative contraindication to deliberate or voluntary exposure to the substance. 'High Risk' is flagged if the clinician has identified a propensity for a more serious or potentially life-threatening reaction, such as anaphylaxis, and implies an absolute contraindication to deliberate or voluntary exposure to the substance. If this element is missing, the criticality is unknown (though it may be known elsewhere).  Systems that capture a severity at the condition level are actually representing the concept of criticality whereas the severity documented at the reaction level is representing the true reaction severity.  Existing systems that are capturing both condition criticality and reaction severity may use the term "severity" to represent both.  Criticality is the worst it could be in the future (i.e. situation-agnostic) whereas severity is situation-dependent.
  final String?
      criticality; // Possible values: 'low', 'high', 'unable-to-assess'
  /// Encounter when the allergy or intolerance was asserted
  /// The encounter when the allergy or intolerance was asserted.
  final Reference? encounter;

  /// External ids for this item
  /// Business identifiers assigned to this AllergyIntolerance by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// Date(/time) of last known occurrence of a reaction
  /// Represents the date and/or time of the last known occurrence of a reaction event.
  /// This date may be replicated by one of the Onset of Reaction dates. Where a textual representation of the date of last occurrence is required e.g. 'In Childhood, '10 years ago' the Comment element should be used.
  final String? lastOccurrence;

  /// Additional text not captured in other fields
  /// Additional narrative about the propensity for the Adverse Reaction, not captured in other fields.
  /// For example: including reason for flagging a seriousness of 'High Risk'; and instructions related to future exposure or administration of the substance, such as administration within an Intensive Care Unit or under corticosteroid cover. The notes should be related to an allergy or intolerance as a condition in general and not related to any particular episode of it. For episode notes and descriptions, use AllergyIntolerance.event.description and  AllergyIntolerance.event.notes.
  final List<Annotation>? note;

  /// When allergy or intolerance was identified
  /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
  final Age? onsetAge;

  /// When allergy or intolerance was identified
  /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
  final String? onsetDateTime;

  /// When allergy or intolerance was identified
  /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
  final Period? onsetPeriod;

  /// When allergy or intolerance was identified
  /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
  final Range? onsetRange;

  /// When allergy or intolerance was identified
  /// Estimated or actual date,  date-time, or age when allergy or intolerance was identified.
  final String? onsetString;

  /// Who the sensitivity is for
  /// The patient who has the allergy or intolerance.
  final Reference patient;

  /// Adverse Reaction Events linked to exposure to substance
  /// Details about each adverse reaction event linked to exposure to the identified substance.
  final List<AllergyIntoleranceReaction>? reaction;

  /// Date first version of the resource instance was recorded
  /// The recordedDate represents when this particular AllergyIntolerance record was created in the system, which is often a system-generated date.
  final String? recordedDate;

  /// Who recorded the sensitivity
  /// Individual who recorded the record and takes responsibility for its content.
  final Reference? recorder;

  /// allergy | intolerance - Underlying mechanism (if known)
  /// Identification of the underlying physiological mechanism for the reaction risk.
  /// Allergic (typically immune-mediated) reactions have been traditionally regarded as an indicator for potential escalation to significant future risk. Contemporary knowledge suggests that some reactions previously thought to be immune-mediated are, in fact, non-immune, but in some cases can still pose a life threatening risk. It is acknowledged that many clinicians might not be in a position to distinguish the mechanism of a particular reaction. Often the term "allergy" is used rather generically and may overlap with the use of "intolerance" - in practice the boundaries between these two concepts might not be well-defined or understood. This data element is included nevertheless, because many legacy systems have captured this attribute. Immunologic testing may provide supporting evidence for the basis of the reaction and the causative substance, but no tests are 100% sensitive or specific for sensitivity to a particular substance. If, as is commonly the case, it is unclear whether the reaction is due to an allergy or an intolerance, then the type element should be omitted from the resource.
  final String? type; // Possible values: 'allergy', 'intolerance'
  /// unconfirmed | confirmed | refuted | entered-in-error
  /// Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).
  /// The data type is CodeableConcept because verificationStatus has some clinical judgment involved, such that there might need to be more specificity than the required FHIR value set allows. For example, a SNOMED coding might allow for additional specificity.
  final CodeableConcept? verificationStatus;
  AllergyIntolerance({
    this.asserter,
    this.category,
    this.clinicalStatus,
    this.code,
    super.contained,
    this.criticality,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.lastOccurrence,
    super.meta,
    super.modifierExtension,
    this.note,
    this.onsetAge,
    this.onsetDateTime,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    required this.patient,
    this.reaction,
    this.recordedDate,
    this.recorder,
    super.text,
    this.type,
    this.verificationStatus,
  });

  @override
  factory AllergyIntolerance.fromJson(Map<String, dynamic> json) {
    return AllergyIntolerance(
      asserter: json['asserter'] != null
          ? Reference.fromJson(
              (json['asserter'] as Map).cast<String, dynamic>())
          : null,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      clinicalStatus: json['clinicalStatus'] != null
          ? CodeableConcept.fromJson(
              (json['clinicalStatus'] as Map).cast<String, dynamic>())
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      criticality: json['criticality'] as String?,
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
      lastOccurrence: json['lastOccurrence'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      onsetAge: json['onsetAge'] != null
          ? Age.fromJson((json['onsetAge'] as Map).cast<String, dynamic>())
          : null,
      onsetDateTime: json['onsetDateTime'] as String?,
      onsetPeriod: json['onsetPeriod'] != null
          ? Period.fromJson(
              (json['onsetPeriod'] as Map).cast<String, dynamic>())
          : null,
      onsetRange: json['onsetRange'] != null
          ? Range.fromJson((json['onsetRange'] as Map).cast<String, dynamic>())
          : null,
      onsetString: json['onsetString'] as String?,
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map((e) => AllergyIntoleranceReaction.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      recordedDate: json['recordedDate'] as String?,
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              (json['recorder'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] as String?,
      verificationStatus: json['verificationStatus'] != null
          ? CodeableConcept.fromJson(
              (json['verificationStatus'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'asserter': asserter?.toJson(),
        'category': category?.map((e) => e).toList(),
        'clinicalStatus': clinicalStatus?.toJson(),
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'criticality': criticality,
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'lastOccurrence': lastOccurrence,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'onsetAge': onsetAge?.toJson(),
        'onsetDateTime': onsetDateTime,
        'onsetPeriod': onsetPeriod?.toJson(),
        'onsetRange': onsetRange?.toJson(),
        'onsetString': onsetString,
        'patient': patient.toJson(),
        'reaction': reaction?.map((e) => e.toJson()).toList(),
        'recordedDate': recordedDate,
        'recorder': recorder?.toJson(),
        'text': text?.toJson(),
        'type': type,
        'verificationStatus': verificationStatus?.toJson(),
      };

  @override
  AllergyIntolerance copyWith({
    Reference? asserter,
    List<String>? category,
    CodeableConcept? clinicalStatus,
    CodeableConcept? code,
    List<Resource>? contained,
    String? criticality,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    String? lastOccurrence,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    Age? onsetAge,
    String? onsetDateTime,
    Period? onsetPeriod,
    Range? onsetRange,
    String? onsetString,
    Reference? patient,
    List<AllergyIntoleranceReaction>? reaction,
    String? recordedDate,
    Reference? recorder,
    Narrative? text,
    String? type,
    CodeableConcept? verificationStatus,
  }) {
    return AllergyIntolerance(
      asserter: asserter ?? this.asserter,
      category: category ?? this.category,
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      criticality: criticality ?? this.criticality,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      lastOccurrence: lastOccurrence ?? this.lastOccurrence,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetDateTime: onsetDateTime ?? this.onsetDateTime,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      patient: patient ?? this.patient,
      reaction: reaction ?? this.reaction,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      text: text ?? this.text,
      type: type ?? this.type,
      verificationStatus: verificationStatus ?? this.verificationStatus,
    );
  }
}

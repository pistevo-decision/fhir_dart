part of '../fhir_dart.dart';

/// Significant health conditions for a person related to the patient relevant in the context of care for the patient.
class FamilyMemberHistory extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'FamilyMemberHistory';

  /// (approximate) age
  /// The age of the relative at the time the family member history is recorded.
  /// use estimatedAge to indicate whether the age is actual or not.
  final Age? ageAge;

  /// (approximate) age
  /// The age of the relative at the time the family member history is recorded.
  /// use estimatedAge to indicate whether the age is actual or not.
  final Range? ageRange;

  /// (approximate) age
  /// The age of the relative at the time the family member history is recorded.
  /// use estimatedAge to indicate whether the age is actual or not.
  final String? ageString;

  /// (approximate) date of birth
  /// The actual or approximate date of birth of the relative.
  final String? bornDate;

  /// (approximate) date of birth
  /// The actual or approximate date of birth of the relative.
  final Period? bornPeriod;

  /// (approximate) date of birth
  /// The actual or approximate date of birth of the relative.
  final String? bornString;

  /// Condition that the related person had
  /// The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system to represent more than one condition per resource, though there is nothing stopping multiple resources - one per condition.
  final List<FamilyMemberHistoryCondition>? condition;

  /// subject-unknown | withheld | unable-to-obtain | deferred
  /// Describes why the family member's history is not available.
  final CodeableConcept? dataAbsentReason;

  /// When history was recorded or last updated
  /// The date (and possibly time) when the family member history was recorded or last updated.
  /// This should be captured even if the same as the date on the List aggregating the full family history.
  final String? date;

  /// Dead? How old/when?
  /// Deceased flag or the actual or approximate age of the relative at the time of death for the family member history record.
  final Age? deceasedAge;

  /// Dead? How old/when?
  /// Deceased flag or the actual or approximate age of the relative at the time of death for the family member history record.
  final bool? deceasedBoolean;

  /// Dead? How old/when?
  /// Deceased flag or the actual or approximate age of the relative at the time of death for the family member history record.
  final String? deceasedDate;

  /// Dead? How old/when?
  /// Deceased flag or the actual or approximate age of the relative at the time of death for the family member history record.
  final Range? deceasedRange;

  /// Dead? How old/when?
  /// Deceased flag or the actual or approximate age of the relative at the time of death for the family member history record.
  final String? deceasedString;

  /// Age is estimated?
  /// If true, indicates that the age value specified is an estimated value.
  /// This element is labeled as a modifier because the fact that age is estimated can/should change the results of any algorithm that calculates based on the specified age.
  final bool? estimatedAge;

  /// External Id(s) for this record
  /// Business identifiers assigned to this family member history by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this FamilyMemberHistory.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this FamilyMemberHistory.
  /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;

  /// The family member described
  /// This will either be a name or a description; e.g. "Aunt Susan", "my cousin with the red hair".
  final String? name;

  /// General note about related person
  /// This property allows a non condition-specific note to the made about the related person. Ideally, the note would be in the condition property, but this is not always possible.
  final List<Annotation>? note;

  /// Patient history is about
  /// The person who this history concerns.
  final Reference patient;

  /// Why was family member history performed?
  /// Describes why the family member history occurred in coded or textual form.
  /// Textual reasons can be captured using reasonCode.text.
  final List<CodeableConcept>? reasonCode;

  /// Why was family member history performed?
  /// Indicates a Condition, Observation, AllergyIntolerance, or QuestionnaireResponse that justifies this family member history event.
  final List<Reference>? reasonReference;

  /// Relationship to the subject
  /// The type of relationship this person has to the patient (father, mother, brother etc.).
  final CodeableConcept relationship;

  /// male | female | other | unknown
  /// The birth sex of the family member.
  /// This element should ideally reflect whether the individual is genetically male or female.  However, as reported information based on the knowledge of the patient or reporting friend/relative, there may be situations where the reported sex might not be totally accurate.  E.g. 'Aunt Sue' might be XY rather than XX.  Questions soliciting this information should be phrased to encourage capture of genetic sex where known.  However, systems performing analysis should also allow for the possibility of imprecision with this element.
  final CodeableConcept? sex;

  /// A code specifying the status of the record of the family history of a specific family member.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'partial', 'completed', 'entered-in-error', 'health-unknown'
  FamilyMemberHistory({
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.bornDate,
    this.bornPeriod,
    this.bornString,
    this.condition,
    super.contained,
    this.dataAbsentReason,
    this.date,
    this.deceasedAge,
    this.deceasedBoolean,
    this.deceasedDate,
    this.deceasedRange,
    this.deceasedString,
    this.estimatedAge,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiatesCanonical,
    this.instantiatesUri,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.note,
    required this.patient,
    this.reasonCode,
    this.reasonReference,
    required this.relationship,
    this.sex,
    required this.status,
    super.text,
  });

  @override
  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) {
    return FamilyMemberHistory(
      ageAge: json['ageAge'] != null
          ? Age.fromJson((json['ageAge'] as Map).cast<String, dynamic>())
          : null,
      ageRange: json['ageRange'] != null
          ? Range.fromJson((json['ageRange'] as Map).cast<String, dynamic>())
          : null,
      ageString: json['ageString'] as String?,
      bornDate: json['bornDate'] as String?,
      bornPeriod: json['bornPeriod'] != null
          ? Period.fromJson((json['bornPeriod'] as Map).cast<String, dynamic>())
          : null,
      bornString: json['bornString'] as String?,
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) => FamilyMemberHistoryCondition.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              (json['dataAbsentReason'] as Map).cast<String, dynamic>())
          : null,
      date: json['date'] as String?,
      deceasedAge: json['deceasedAge'] != null
          ? Age.fromJson((json['deceasedAge'] as Map).cast<String, dynamic>())
          : null,
      deceasedBoolean: json['deceasedBoolean'] as bool?,
      deceasedDate: json['deceasedDate'] as String?,
      deceasedRange: json['deceasedRange'] != null
          ? Range.fromJson(
              (json['deceasedRange'] as Map).cast<String, dynamic>())
          : null,
      deceasedString: json['deceasedString'] as String?,
      estimatedAge: json['estimatedAge'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      relationship: CodeableConcept.fromJson(
          (json['relationship'] as Map).cast<String, dynamic>()),
      sex: json['sex'] != null
          ? CodeableConcept.fromJson(
              (json['sex'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'ageAge': ageAge?.toJson(),
        'ageRange': ageRange?.toJson(),
        'ageString': ageString,
        'bornDate': bornDate,
        'bornPeriod': bornPeriod?.toJson(),
        'bornString': bornString,
        'condition': condition?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'dataAbsentReason': dataAbsentReason?.toJson(),
        'date': date,
        'deceasedAge': deceasedAge?.toJson(),
        'deceasedBoolean': deceasedBoolean,
        'deceasedDate': deceasedDate,
        'deceasedRange': deceasedRange?.toJson(),
        'deceasedString': deceasedString,
        'estimatedAge': estimatedAge,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'note': note?.map((e) => e.toJson()).toList(),
        'patient': patient.toJson(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'relationship': relationship.toJson(),
        'sex': sex?.toJson(),
        'status': status,
        'text': text?.toJson(),
      };

  @override
  FamilyMemberHistory copyWith({
    Age? ageAge,
    Range? ageRange,
    String? ageString,
    String? bornDate,
    Period? bornPeriod,
    String? bornString,
    List<FamilyMemberHistoryCondition>? condition,
    List<Resource>? contained,
    CodeableConcept? dataAbsentReason,
    String? date,
    Age? deceasedAge,
    bool? deceasedBoolean,
    String? deceasedDate,
    Range? deceasedRange,
    String? deceasedString,
    bool? estimatedAge,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<Annotation>? note,
    Reference? patient,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    CodeableConcept? relationship,
    CodeableConcept? sex,
    String? status,
    Narrative? text,
  }) {
    return FamilyMemberHistory(
      ageAge: ageAge ?? this.ageAge,
      ageRange: ageRange ?? this.ageRange,
      ageString: ageString ?? this.ageString,
      bornDate: bornDate ?? this.bornDate,
      bornPeriod: bornPeriod ?? this.bornPeriod,
      bornString: bornString ?? this.bornString,
      condition: condition ?? this.condition,
      contained: contained ?? this.contained,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      date: date ?? this.date,
      deceasedAge: deceasedAge ?? this.deceasedAge,
      deceasedBoolean: deceasedBoolean ?? this.deceasedBoolean,
      deceasedDate: deceasedDate ?? this.deceasedDate,
      deceasedRange: deceasedRange ?? this.deceasedRange,
      deceasedString: deceasedString ?? this.deceasedString,
      estimatedAge: estimatedAge ?? this.estimatedAge,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      note: note ?? this.note,
      patient: patient ?? this.patient,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      relationship: relationship ?? this.relationship,
      sex: sex ?? this.sex,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}

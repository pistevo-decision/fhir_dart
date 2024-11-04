part of '../fhir_dart.dart';

/// Used for simple observations such as device measurements, laboratory atomic results, vital signs, height, weight, smoking status, comments, etc.  Other resources are used to provide context for observations such as laboratory reports, etc.
/// Measurements and simple assertions made about a patient, device or other subject.
/// Observations are a key aspect of healthcare.  This resource is used to capture those that do not require more sophisticated mechanisms.
class Observation extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Observation';

  /// Fulfills plan, proposal or order
  /// A plan, proposal or order that is fulfilled in whole or in part by this event.  For example, a MedicationRequest may require a patient to have laboratory test performed before  it is dispensed.
  final List<Reference>? basedOn;

  /// Observed body part
  /// Indicates the site on the subject's body where the observation was made (i.e. the target site).
  /// Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component.
  /// If the use case requires BodySite to be handled as a separate resource (e.g. to identify and track separately) then use the standard extension[ bodySite](extension-bodysite.html).
  final CodeableConcept? bodySite;

  /// Classification of  type of observation
  /// A code that classifies the general type of observation being made.
  /// In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set.
  final List<CodeableConcept>? category;

  /// Type of observation (code / type)
  /// Describes what was observed. Sometimes this is called the observation "name".
  /// *All* code-value and, if present, component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation.
  final CodeableConcept code;

  /// Component results
  /// Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations.
  /// For a discussion on the ways Observations can be assembled in groups together see [Notes](observation.html#notes) below.
  final List<ObservationComponent>? component;

  /// Why the result is missing
  /// Provides a reason why the expected value in the element Observation.value[x] is missing.
  /// Null or exceptional values can be represented two ways in FHIR Observations.  One way is to simply include them in the value set and represent the exceptions in the value.  For example, measurement values for a serology test could be  "detected", "not detected", "inconclusive", or  "specimen unsatisfactory".
  /// The alternate way is to use the value element for actual observations and use the explicit dataAbsentReason element to record exceptional values.  For example, the dataAbsentReason code "error" could be used when the measurement was not completed. Note that an observation may only be reported if there are values to report. For example differential cell counts values may be reported only when > 0.  Because of these options, use-case agreements are required to interpret general observations for null or exceptional values.
  final CodeableConcept? dataAbsentReason;

  /// Related measurements the observation is made from
  /// The target resource that represents a measurement from which this observation value is derived. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.
  /// All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see [Notes](observation.html#obsgrouping) below.
  final List<Reference>? derivedFrom;

  /// (Measurement) Device
  /// The device used to generate the observation data.
  /// Note that this is not meant to represent a device involved in the transmission of the result, e.g., a gateway.  Such devices may be documented using the Provenance resource where relevant.
  final Reference? device;

  /// Clinically relevant time/time-period for observation
  /// The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the "physiologically relevant time". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself.
  /// At least a date should be present unless this observation is a historical report.  For recording imprecise or "fuzzy" times (For example, a blood glucose measurement taken "after breakfast") use the [Timing](datatypes.html#timing) datatype which allow the measurement to be tied to regular life events.
  final String? effectiveDateTime;

  /// Clinically relevant time/time-period for observation
  /// The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the "physiologically relevant time". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself.
  /// At least a date should be present unless this observation is a historical report.  For recording imprecise or "fuzzy" times (For example, a blood glucose measurement taken "after breakfast") use the [Timing](datatypes.html#timing) datatype which allow the measurement to be tied to regular life events.
  final String? effectiveInstant;

  /// Clinically relevant time/time-period for observation
  /// The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the "physiologically relevant time". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself.
  /// At least a date should be present unless this observation is a historical report.  For recording imprecise or "fuzzy" times (For example, a blood glucose measurement taken "after breakfast") use the [Timing](datatypes.html#timing) datatype which allow the measurement to be tied to regular life events.
  final Period? effectivePeriod;

  /// Clinically relevant time/time-period for observation
  /// The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the "physiologically relevant time". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself.
  /// At least a date should be present unless this observation is a historical report.  For recording imprecise or "fuzzy" times (For example, a blood glucose measurement taken "after breakfast") use the [Timing](datatypes.html#timing) datatype which allow the measurement to be tied to regular life events.
  final Timing? effectiveTiming;

  /// Healthcare event during which this observation is made
  /// The healthcare event  (e.g. a patient and healthcare provider interaction) during which this observation is made.
  /// This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests).
  final Reference? encounter;

  /// What the observation is about, when it is not about the subject of record
  /// The actual focus of an observation when it is not the patient of record representing something or someone associated with the patient such as a spouse, parent, fetus, or donor. For example, fetus observations in a mother's record.  The focus of an observation could also be an existing condition,  an intervention, the subject's diet,  another observation of the subject,  or a body structure such as tumor or implanted device.   An example use case would be using the Observation resource to capture whether the mother is trained to change her child's tracheostomy tube. In this example, the child is the patient of record and the mother is the focus.
  /// Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., "Blood Glucose") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required.  If a code is required instead of a resource use either  `bodysite` for bodysites or the standard extension [focusCode](extension-observation-focuscode.html).
  final List<Reference>? focus;

  /// Related resource that belongs to the Observation group
  /// This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.
  /// When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see [Notes](observation.html#obsgrouping) below.  Note that a system may calculate results from [QuestionnaireResponse](questionnaireresponse.html)  into a final score and represent the score as an Observation.
  final List<Reference>? hasMember;

  /// Business Identifier for observation
  /// A unique identifier assigned to this observation.
  final List<Identifier>? identifier;

  /// High, low, normal, etc.
  /// A categorical assessment of an observation value.  For example, high, low, normal.
  /// Historically used for laboratory results (known as 'abnormal flag' ),  its use extends to other use cases where coded interpretations  are relevant.  Often reported as one or more simple compact codes this element is often placed adjacent to the result value in reports and flow sheets to signal the meaning/normalcy status of the result.
  final List<CodeableConcept>? interpretation;

  /// Date/Time this version was made available
  /// The date and time this version of the observation was made available to providers, typically after the results have been reviewed and verified.
  /// For Observations that don’t require review and verification, it may be the same as the [`lastUpdated` ](resource-definitions.html#Meta.lastUpdated) time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn’t require the new version to be reviewed and verified again.
  final String? issued;

  /// How it was done
  /// Indicates the mechanism used to perform the observation.
  /// Only used if not implicit in code for Observation.code.
  final CodeableConcept? method;

  /// Comments about the observation or the results.
  /// May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation.
  final List<Annotation>? note;

  /// Part of referenced event
  /// A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a procedure.
  /// To link an Observation to an Encounter use `encounter`.  See the  [Notes](observation.html#obsgrouping) below for guidance on referencing another Observation.
  final List<Reference>? partOf;

  /// Who is responsible for the observation
  /// Who was responsible for asserting the observed value as "true".
  final List<Reference>? performer;

  /// Provides guide for interpretation
  /// Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are interpreted as an "OR".   In other words, to represent two distinct target populations, two `referenceRange` elements would be used.
  /// Most observations only have one generic reference range. Systems MAY choose to restrict to only supplying the relevant reference range based on knowledge about the patient (e.g., specific to the patient's age, gender, weight and other factors), but this might not be possible or appropriate. Whenever more than one reference range is supplied, the differences between them SHOULD be provided in the reference range and/or age properties.
  final List<ObservationReferenceRange>? referenceRange;

  /// Specimen used for this observation
  /// The specimen that was used when this observation was made.
  /// Should only be used if not implicit in code found in `Observation.code`.  Observations are not made on specimens themselves; they are made on a subject, but in many cases by the means of a specimen. Note that although specimens are often involved, they are not always tracked and reported explicitly. Also note that observation resources may be used in contexts that track the specimen explicitly (e.g. Diagnostic Report).
  final Reference? specimen;

  /// The status of the result value.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'registered', 'preliminary', 'final', 'amended', 'corrected', 'cancelled', 'entered-in-error', 'unknown'
  /// Who and/or what the observation is about
  /// The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation.
  /// One would expect this element to be a cardinality of 1..1. The only circumstance in which the subject can be missing is when the observation is made by a device that does not know the patient. In this case, the observation SHALL be matched to a patient through some context/channel matching technique, and at this point, the observation should be updated.
  final Reference? subject;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final bool? valueBoolean;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final CodeableConcept? valueCodeableConcept;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final String? valueDateTime;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final int? valueInteger;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Period? valuePeriod;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Quantity? valueQuantity;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Range? valueRange;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Ratio? valueRatio;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final SampledData? valueSampledData;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final String? valueString;

  /// Actual result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final String? valueTime;
  Observation({
    this.basedOn,
    this.bodySite,
    this.category,
    required this.code,
    this.component,
    super.contained,
    this.dataAbsentReason,
    this.derivedFrom,
    this.device,
    this.effectiveDateTime,
    this.effectiveInstant,
    this.effectivePeriod,
    this.effectiveTiming,
    this.encounter,
    super.fhirExtension,
    this.focus,
    this.hasMember,
    super.id,
    this.identifier,
    super.implicitRules,
    this.interpretation,
    this.issued,
    super.language,
    super.meta,
    this.method,
    super.modifierExtension,
    this.note,
    this.partOf,
    this.performer,
    this.referenceRange,
    this.specimen,
    required this.status,
    this.subject,
    super.text,
    this.valueBoolean,
    this.valueCodeableConcept,
    this.valueDateTime,
    this.valueInteger,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueString,
    this.valueTime,
  });

  @override
  factory Observation.fromJson(Map<String, dynamic> json) {
    return Observation(
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      component: (json['component'] as List<dynamic>?)
          ?.map((e) => ObservationComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>)
          : null,
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      device: json['device'] != null
          ? Reference.fromJson(json['device'] as Map<String, dynamic>)
          : null,
      effectiveDateTime: json['effectiveDateTime'] as String?,
      effectiveInstant: json['effectiveInstant'] as String?,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      effectiveTiming: json['effectiveTiming'] != null
          ? Timing.fromJson(json['effectiveTiming'] as Map<String, dynamic>)
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      focus: (json['focus'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMember: (json['hasMember'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      issued: json['issued'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map((e) =>
              ObservationReferenceRange.fromJson(e as Map<String, dynamic>))
          .toList(),
      specimen: json['specimen'] != null
          ? Reference.fromJson(json['specimen'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] as bool?,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] as String?,
      valueInteger: json['valueInteger'] as int?,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(json['valuePeriod'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>)
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>)
          : null,
      valueString: json['valueString'] as String?,
      valueTime: json['valueTime'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'bodySite': bodySite?.toJson(),
        'category': category?.map((e) => e.toJson()).toList(),
        'code': code.toJson(),
        'component': component?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'dataAbsentReason': dataAbsentReason?.toJson(),
        'derivedFrom': derivedFrom?.map((e) => e.toJson()).toList(),
        'device': device?.toJson(),
        'effectiveDateTime': effectiveDateTime,
        'effectiveInstant': effectiveInstant,
        'effectivePeriod': effectivePeriod?.toJson(),
        'effectiveTiming': effectiveTiming?.toJson(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'focus': focus?.map((e) => e.toJson()).toList(),
        'hasMember': hasMember?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'interpretation': interpretation?.map((e) => e.toJson()).toList(),
        'issued': issued,
        'language': language,
        'meta': meta?.toJson(),
        'method': method?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'performer': performer?.map((e) => e.toJson()).toList(),
        'referenceRange': referenceRange?.map((e) => e.toJson()).toList(),
        'specimen': specimen?.toJson(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'valueBoolean': valueBoolean,
        'valueCodeableConcept': valueCodeableConcept?.toJson(),
        'valueDateTime': valueDateTime,
        'valueInteger': valueInteger,
        'valuePeriod': valuePeriod?.toJson(),
        'valueQuantity': valueQuantity?.toJson(),
        'valueRange': valueRange?.toJson(),
        'valueRatio': valueRatio?.toJson(),
        'valueSampledData': valueSampledData?.toJson(),
        'valueString': valueString,
        'valueTime': valueTime,
      };

  @override
  Observation copyWith({
    List<Reference>? basedOn,
    CodeableConcept? bodySite,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<ObservationComponent>? component,
    List<Resource>? contained,
    CodeableConcept? dataAbsentReason,
    List<Reference>? derivedFrom,
    Reference? device,
    String? effectiveDateTime,
    String? effectiveInstant,
    Period? effectivePeriod,
    Timing? effectiveTiming,
    Reference? encounter,
    List<Extension>? fhirExtension,
    List<Reference>? focus,
    List<Reference>? hasMember,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CodeableConcept>? interpretation,
    String? issued,
    String? language,
    Meta? meta,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<Reference>? partOf,
    List<Reference>? performer,
    List<ObservationReferenceRange>? referenceRange,
    Reference? specimen,
    String? status,
    Reference? subject,
    Narrative? text,
    bool? valueBoolean,
    CodeableConcept? valueCodeableConcept,
    String? valueDateTime,
    int? valueInteger,
    Period? valuePeriod,
    Quantity? valueQuantity,
    Range? valueRange,
    Ratio? valueRatio,
    SampledData? valueSampledData,
    String? valueString,
    String? valueTime,
  }) {
    return Observation(
      basedOn: basedOn ?? this.basedOn,
      bodySite: bodySite ?? this.bodySite,
      category: category ?? this.category,
      code: code ?? this.code,
      component: component ?? this.component,
      contained: contained ?? this.contained,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      device: device ?? this.device,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectiveInstant: effectiveInstant ?? this.effectiveInstant,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      effectiveTiming: effectiveTiming ?? this.effectiveTiming,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focus: focus ?? this.focus,
      hasMember: hasMember ?? this.hasMember,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      interpretation: interpretation ?? this.interpretation,
      issued: issued ?? this.issued,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      partOf: partOf ?? this.partOf,
      performer: performer ?? this.performer,
      referenceRange: referenceRange ?? this.referenceRange,
      specimen: specimen ?? this.specimen,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueInteger: valueInteger ?? this.valueInteger,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
    );
  }
}

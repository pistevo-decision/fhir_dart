part of '../fhir_dart.dart';

/// Component results
/// Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations.
/// For a discussion on the ways Observations can be assembled in groups together see [Notes](observation.html#notes) below.
class ObservationComponent extends BackboneElement implements FhirResource {
  /// Type of component observation (code / type)
  /// Describes what was observed. Sometimes this is called the observation "code".
  /// *All* code-value and  component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation.
  final CodeableConcept code;

  /// Why the component result is missing
  /// Provides a reason why the expected value in the element Observation.component.value[x] is missing.
  /// "Null" or exceptional values can be represented two ways in FHIR Observations.  One way is to simply include them in the value set and represent the exceptions in the value.  For example, measurement values for a serology test could be  "detected", "not detected", "inconclusive", or  "test not done".
  /// The alternate way is to use the value element for actual observations and use the explicit dataAbsentReason element to record exceptional values.  For example, the dataAbsentReason code "error" could be used when the measurement was not completed.  Because of these options, use-case agreements are required to interpret general observations for exceptional values.
  final CodeableConcept? dataAbsentReason;

  /// High, low, normal, etc.
  /// A categorical assessment of an observation value.  For example, high, low, normal.
  /// Historically used for laboratory results (known as 'abnormal flag' ),  its use extends to other use cases where coded interpretations  are relevant.  Often reported as one or more simple compact codes this element is often placed adjacent to the result value in reports and flow sheets to signal the meaning/normalcy status of the result.
  final List<CodeableConcept>? interpretation;

  /// Provides guide for interpretation of component result
  /// Guidance on how to interpret the value by comparison to a normal or recommended range.
  /// Most observations only have one generic reference range. Systems MAY choose to restrict to only supplying the relevant reference range based on knowledge about the patient (e.g., specific to the patient's age, gender, weight and other factors), but this might not be possible or appropriate. Whenever more than one reference range is supplied, the differences between them SHOULD be provided in the reference range and/or age properties.
  final List<ObservationReferenceRange>? referenceRange;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final bool? valueBoolean;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final CodeableConcept? valueCodeableConcept;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final String? valueDateTime;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final int? valueInteger;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Period? valuePeriod;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Quantity? valueQuantity;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Range? valueRange;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final Ratio? valueRatio;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final SampledData? valueSampledData;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final String? valueString;

  /// Actual component result
  /// The information determined as a result of making the observation, if the information has a simple value.
  /// Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below.
  final String? valueTime;
  ObservationComponent({
    required this.code,
    this.dataAbsentReason,
    super.fhirExtension,
    super.id,
    this.interpretation,
    super.modifierExtension,
    this.referenceRange,
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
  factory ObservationComponent.fromJson(Map<String, dynamic> json) {
    return ObservationComponent(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map((e) =>
              ObservationReferenceRange.fromJson(e as Map<String, dynamic>))
          .toList(),
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
        'code': code.toJson(),
        'dataAbsentReason': dataAbsentReason?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'interpretation': interpretation?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'referenceRange': referenceRange?.map((e) => e.toJson()).toList(),
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
  ObservationComponent copyWith({
    CodeableConcept? code,
    CodeableConcept? dataAbsentReason,
    List<Extension>? fhirExtension,
    String? id,
    List<CodeableConcept>? interpretation,
    List<Extension>? modifierExtension,
    List<ObservationReferenceRange>? referenceRange,
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
    return ObservationComponent(
      code: code ?? this.code,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      interpretation: interpretation ?? this.interpretation,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      referenceRange: referenceRange ?? this.referenceRange,
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

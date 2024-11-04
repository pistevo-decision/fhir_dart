part of '../fhir_dart.dart';

 /// An instance of this resource informs the consumer of a health-related service (such as a lab diagnostic test or panel) about how the observations used or produced by this service will look like.
 /// Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service.
 /// In a catalog of health-related services that use or produce observations and measurements, this resource describes the expected characteristics of these observation / measurements.
class ObservationDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'ObservationDefinition';
   /// Value set of abnormal coded values for the observations conforming to this ObservationDefinition
   /// The set of abnormal coded results for the observation conforming to this ObservationDefinition.
  final Reference? abnormalCodedValueSet;
   /// Category of observation
   /// A code that classifies the general type of observation.
   /// This element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used for one instance of ObservationDefinition. The level of granularity is defined by the category concepts in the value set.
  final List<CodeableConcept>? category;
   /// Type of observation (code / type)
   /// Describes what will be observed. Sometimes this is called the observation "name".
  final CodeableConcept code;
   /// Value set of critical coded values for the observations conforming to this ObservationDefinition
   /// The set of critical coded results for the observation conforming to this ObservationDefinition.
  final Reference? criticalCodedValueSet;
   /// Business identifier for this ObservationDefinition instance
   /// A unique identifier assigned to this ObservationDefinition artifact.
  final List<Identifier>? identifier;
   /// Method used to produce the observation
   /// The method or technique used to perform the observation.
   /// Only used if not implicit in observation code.
  final CodeableConcept? method;
   /// Multiple results allowed for observations conforming to this ObservationDefinition.
   /// An example of observation allowing multiple results is "bacteria identified by culture". Conversely, the measurement of a potassium level allows a single result.
  final bool? multipleResultsAllowed;
   /// Value set of normal coded values for the observations conforming to this ObservationDefinition
   /// The set of normal coded results for the observations conforming to this ObservationDefinition.
  final Reference? normalCodedValueSet;
   /// The data types allowed for the value element of the instance observations conforming to this ObservationDefinition.
  final List<String>? permittedDataType; // Possible values: 'Quantity', 'CodeableConcept', 'string', 'boolean', 'integer', 'Range', 'Ratio', 'SampledData', 'time', 'dateTime', 'Period'
   /// Preferred report name
   /// The preferred name to be used when reporting the results of observations conforming to this ObservationDefinition.
  final String? preferredReportName;
   /// Qualified range for continuous and ordinal observation results
   /// Multiple  ranges of results qualified by different contexts for ordinal or continuous observations conforming to this ObservationDefinition.
  final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval;
   /// Characteristics of quantitative results
   /// Characteristics for quantitative results of this observation.
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;
   /// Value set of valid coded values for the observations conforming to this ObservationDefinition
   /// The set of valid coded results for the observations  conforming to this ObservationDefinition.
  final Reference? validCodedValueSet;
  ObservationDefinition({
    this.abnormalCodedValueSet,
    this.category,
    required this.code,
    super.contained,
    this.criticalCodedValueSet,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    this.method,
    super.modifierExtension,
    this.multipleResultsAllowed,
    this.normalCodedValueSet,
    this.permittedDataType,
    this.preferredReportName,
    this.qualifiedInterval,
    this.quantitativeDetails,
    super.text,
    this.validCodedValueSet,
  });
  
  @override
  factory ObservationDefinition.fromJson(Map<String, dynamic> json) {
    return ObservationDefinition(
      abnormalCodedValueSet: json['abnormalCodedValueSet'] != null ? Reference.fromJson(json['abnormalCodedValueSet'] as Map<String, dynamic>) : null,
      category: (json['category'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      criticalCodedValueSet: json['criticalCodedValueSet'] != null ? Reference.fromJson(json['criticalCodedValueSet'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      method: json['method'] != null ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      multipleResultsAllowed: json['multipleResultsAllowed'] as bool?,
      normalCodedValueSet: json['normalCodedValueSet'] != null ? Reference.fromJson(json['normalCodedValueSet'] as Map<String, dynamic>) : null,
      permittedDataType: (json['permittedDataType'] as List<dynamic>?)?.map((e) => e as String).toList(),
      preferredReportName: json['preferredReportName'] as String?,
      qualifiedInterval: (json['qualifiedInterval'] as List<dynamic>?)?.map((e) => ObservationDefinitionQualifiedInterval.fromJson(e as Map<String, dynamic>)).toList(),
      quantitativeDetails: json['quantitativeDetails'] != null ? ObservationDefinitionQuantitativeDetails.fromJson(json['quantitativeDetails'] as Map<String, dynamic>) : null,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      validCodedValueSet: json['validCodedValueSet'] != null ? Reference.fromJson(json['validCodedValueSet'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'abnormalCodedValueSet': abnormalCodedValueSet?.toJson(),
      'category': category?.map((e) => e.toJson()).toList(),
      'code': code.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'criticalCodedValueSet': criticalCodedValueSet?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'method': method?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'multipleResultsAllowed': multipleResultsAllowed,
      'normalCodedValueSet': normalCodedValueSet?.toJson(),
      'permittedDataType': permittedDataType?.map((e) => e).toList(),
      'preferredReportName': preferredReportName,
      'qualifiedInterval': qualifiedInterval?.map((e) => e.toJson()).toList(),
      'quantitativeDetails': quantitativeDetails?.toJson(),
      'text': text?.toJson(),
      'validCodedValueSet': validCodedValueSet?.toJson(),
    };
  
  @override
  ObservationDefinition copyWith({
    Reference? abnormalCodedValueSet,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Resource>? contained,
    Reference? criticalCodedValueSet,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    bool? multipleResultsAllowed,
    Reference? normalCodedValueSet,
    List<String>? permittedDataType,
    String? preferredReportName,
    List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
    ObservationDefinitionQuantitativeDetails? quantitativeDetails,
    Narrative? text,
    Reference? validCodedValueSet,
  }) {
    return ObservationDefinition(
      abnormalCodedValueSet: abnormalCodedValueSet ?? this.abnormalCodedValueSet,
      category: category ?? this.category,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      criticalCodedValueSet: criticalCodedValueSet ?? this.criticalCodedValueSet,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      multipleResultsAllowed: multipleResultsAllowed ?? this.multipleResultsAllowed,
      normalCodedValueSet: normalCodedValueSet ?? this.normalCodedValueSet,
      permittedDataType: permittedDataType ?? this.permittedDataType,
      preferredReportName: preferredReportName ?? this.preferredReportName,
      qualifiedInterval: qualifiedInterval ?? this.qualifiedInterval,
      quantitativeDetails: quantitativeDetails ?? this.quantitativeDetails,
      text: text ?? this.text,
      validCodedValueSet: validCodedValueSet ?? this.validCodedValueSet,
    );
  }
}

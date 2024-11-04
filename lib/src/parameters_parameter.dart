part of '../fhir_dart.dart';

 /// Operation Parameter
 /// A parameter passed to or received from the operation.
class ParametersParameter extends BackboneElement implements FhirResource {
   /// Name from the definition
   /// The name of the parameter (reference to the operation definition).
  final String name;
   /// Named part of a multi-part parameter
   /// A named part of a multi-part parameter.
   /// Only one level of nested parameters is allowed.
  final List<ParametersParameter>? fhirPart;
   /// If parameter is a whole resource
   /// If the parameter is a whole resource.
   /// When resolving references in resources, the operation definition may specify how references may be resolved between parameters. If a reference cannot be resolved between the parameters, the application should fall back to it's general resource resolution methods.
  final Resource? resource;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Address? valueAddress;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Age? valueAge;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Annotation? valueAnnotation;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Attachment? valueAttachment;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueBase64Binary;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final bool? valueBoolean;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueCanonical;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueCode;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final CodeableConcept? valueCodeableConcept;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Coding? valueCoding;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final ContactDetail? valueContactDetail;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final ContactPoint? valueContactPoint;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Contributor? valueContributor;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Count? valueCount;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final DataRequirement? valueDataRequirement;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueDate;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueDateTime;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final num? valueDecimal;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Distance? valueDistance;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Dosage? valueDosage;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Duration? valueDuration;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Expression? valueExpression;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final HumanName? valueHumanName;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueId;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Identifier? valueIdentifier;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueInstant;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final int? valueInteger;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueMarkdown;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Meta? valueMeta;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Money? valueMoney;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueOid;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final ParameterDefinition? valueParameterDefinition;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Period? valuePeriod;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final int? valuePositiveInt;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Quantity? valueQuantity;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Range? valueRange;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Ratio? valueRatio;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Reference? valueReference;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final RelatedArtifact? valueRelatedArtifact;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final SampledData? valueSampledData;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Signature? valueSignature;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueString;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueTime;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final Timing? valueTiming;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final TriggerDefinition? valueTriggerDefinition;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final int? valueUnsignedInt;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueUri;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueUrl;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final UsageContext? valueUsageContext;
   /// If parameter is a data type
   /// If the parameter is a data type.
  final String? valueUuid;
  ParametersParameter({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    this.fhirPart,
    this.resource,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueBase64Binary,
    this.valueBoolean,
    this.valueCanonical,
    this.valueCode,
    this.valueCodeableConcept,
    this.valueCoding,
    this.valueContactDetail,
    this.valueContactPoint,
    this.valueContributor,
    this.valueCount,
    this.valueDataRequirement,
    this.valueDate,
    this.valueDateTime,
    this.valueDecimal,
    this.valueDistance,
    this.valueDosage,
    this.valueDuration,
    this.valueExpression,
    this.valueHumanName,
    this.valueId,
    this.valueIdentifier,
    this.valueInstant,
    this.valueInteger,
    this.valueMarkdown,
    this.valueMeta,
    this.valueMoney,
    this.valueOid,
    this.valueParameterDefinition,
    this.valuePeriod,
    this.valuePositiveInt,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueReference,
    this.valueRelatedArtifact,
    this.valueSampledData,
    this.valueSignature,
    this.valueString,
    this.valueTime,
    this.valueTiming,
    this.valueTriggerDefinition,
    this.valueUnsignedInt,
    this.valueUri,
    this.valueUrl,
    this.valueUsageContext,
    this.valueUuid,
  });
  
  @override
  factory ParametersParameter.fromJson(Map<String, dynamic> json) {
    return ParametersParameter(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      fhirPart: (json['part'] as List<dynamic>?)?.map((e) => ParametersParameter.fromJson(e as Map<String, dynamic>)).toList(),
      resource: json['resource'] != null ? Resource.fromJson(json['resource'] as Map<String, dynamic>) : null,
      valueAddress: json['valueAddress'] != null ? Address.fromJson(json['valueAddress'] as Map<String, dynamic>) : null,
      valueAge: json['valueAge'] != null ? Age.fromJson(json['valueAge'] as Map<String, dynamic>) : null,
      valueAnnotation: json['valueAnnotation'] != null ? Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>) : null,
      valueAttachment: json['valueAttachment'] != null ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>) : null,
      valueBase64Binary: json['valueBase64Binary'] as String?,
      valueBoolean: json['valueBoolean'] as bool?,
      valueCanonical: json['valueCanonical'] as String?,
      valueCode: json['valueCode'] as String?,
      valueCodeableConcept: json['valueCodeableConcept'] != null ? CodeableConcept.fromJson(json['valueCodeableConcept'] as Map<String, dynamic>) : null,
      valueCoding: json['valueCoding'] != null ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>) : null,
      valueContactDetail: json['valueContactDetail'] != null ? ContactDetail.fromJson(json['valueContactDetail'] as Map<String, dynamic>) : null,
      valueContactPoint: json['valueContactPoint'] != null ? ContactPoint.fromJson(json['valueContactPoint'] as Map<String, dynamic>) : null,
      valueContributor: json['valueContributor'] != null ? Contributor.fromJson(json['valueContributor'] as Map<String, dynamic>) : null,
      valueCount: json['valueCount'] != null ? Count.fromJson(json['valueCount'] as Map<String, dynamic>) : null,
      valueDataRequirement: json['valueDataRequirement'] != null ? DataRequirement.fromJson(json['valueDataRequirement'] as Map<String, dynamic>) : null,
      valueDate: json['valueDate'] as String?,
      valueDateTime: json['valueDateTime'] as String?,
      valueDecimal: json['valueDecimal'] as num?,
      valueDistance: json['valueDistance'] != null ? Distance.fromJson(json['valueDistance'] as Map<String, dynamic>) : null,
      valueDosage: json['valueDosage'] != null ? Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>) : null,
      valueDuration: json['valueDuration'] != null ? Duration.fromJson(json['valueDuration'] as Map<String, dynamic>) : null,
      valueExpression: json['valueExpression'] != null ? Expression.fromJson(json['valueExpression'] as Map<String, dynamic>) : null,
      valueHumanName: json['valueHumanName'] != null ? HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>) : null,
      valueId: json['valueId'] as String?,
      valueIdentifier: json['valueIdentifier'] != null ? Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>) : null,
      valueInstant: json['valueInstant'] as String?,
      valueInteger: json['valueInteger'] as int?,
      valueMarkdown: json['valueMarkdown'] as String?,
      valueMeta: json['valueMeta'] != null ? Meta.fromJson(json['valueMeta'] as Map<String, dynamic>) : null,
      valueMoney: json['valueMoney'] != null ? Money.fromJson(json['valueMoney'] as Map<String, dynamic>) : null,
      valueOid: json['valueOid'] as String?,
      valueParameterDefinition: json['valueParameterDefinition'] != null ? ParameterDefinition.fromJson(json['valueParameterDefinition'] as Map<String, dynamic>) : null,
      valuePeriod: json['valuePeriod'] != null ? Period.fromJson(json['valuePeriod'] as Map<String, dynamic>) : null,
      valuePositiveInt: json['valuePositiveInt'] as int?,
      valueQuantity: json['valueQuantity'] != null ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>) : null,
      valueRange: json['valueRange'] != null ? Range.fromJson(json['valueRange'] as Map<String, dynamic>) : null,
      valueRatio: json['valueRatio'] != null ? Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>) : null,
      valueReference: json['valueReference'] != null ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>) : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null ? RelatedArtifact.fromJson(json['valueRelatedArtifact'] as Map<String, dynamic>) : null,
      valueSampledData: json['valueSampledData'] != null ? SampledData.fromJson(json['valueSampledData'] as Map<String, dynamic>) : null,
      valueSignature: json['valueSignature'] != null ? Signature.fromJson(json['valueSignature'] as Map<String, dynamic>) : null,
      valueString: json['valueString'] as String?,
      valueTime: json['valueTime'] as String?,
      valueTiming: json['valueTiming'] != null ? Timing.fromJson(json['valueTiming'] as Map<String, dynamic>) : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null ? TriggerDefinition.fromJson(json['valueTriggerDefinition'] as Map<String, dynamic>) : null,
      valueUnsignedInt: json['valueUnsignedInt'] as int?,
      valueUri: json['valueUri'] as String?,
      valueUrl: json['valueUrl'] as String?,
      valueUsageContext: json['valueUsageContext'] != null ? UsageContext.fromJson(json['valueUsageContext'] as Map<String, dynamic>) : null,
      valueUuid: json['valueUuid'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'part': fhirPart?.map((e) => e.toJson()).toList(),
      'resource': resource?.toJson(),
      'valueAddress': valueAddress?.toJson(),
      'valueAge': valueAge?.toJson(),
      'valueAnnotation': valueAnnotation?.toJson(),
      'valueAttachment': valueAttachment?.toJson(),
      'valueBase64Binary': valueBase64Binary,
      'valueBoolean': valueBoolean,
      'valueCanonical': valueCanonical,
      'valueCode': valueCode,
      'valueCodeableConcept': valueCodeableConcept?.toJson(),
      'valueCoding': valueCoding?.toJson(),
      'valueContactDetail': valueContactDetail?.toJson(),
      'valueContactPoint': valueContactPoint?.toJson(),
      'valueContributor': valueContributor?.toJson(),
      'valueCount': valueCount?.toJson(),
      'valueDataRequirement': valueDataRequirement?.toJson(),
      'valueDate': valueDate,
      'valueDateTime': valueDateTime,
      'valueDecimal': valueDecimal,
      'valueDistance': valueDistance?.toJson(),
      'valueDosage': valueDosage?.toJson(),
      'valueDuration': valueDuration?.toJson(),
      'valueExpression': valueExpression?.toJson(),
      'valueHumanName': valueHumanName?.toJson(),
      'valueId': valueId,
      'valueIdentifier': valueIdentifier?.toJson(),
      'valueInstant': valueInstant,
      'valueInteger': valueInteger,
      'valueMarkdown': valueMarkdown,
      'valueMeta': valueMeta?.toJson(),
      'valueMoney': valueMoney?.toJson(),
      'valueOid': valueOid,
      'valueParameterDefinition': valueParameterDefinition?.toJson(),
      'valuePeriod': valuePeriod?.toJson(),
      'valuePositiveInt': valuePositiveInt,
      'valueQuantity': valueQuantity?.toJson(),
      'valueRange': valueRange?.toJson(),
      'valueRatio': valueRatio?.toJson(),
      'valueReference': valueReference?.toJson(),
      'valueRelatedArtifact': valueRelatedArtifact?.toJson(),
      'valueSampledData': valueSampledData?.toJson(),
      'valueSignature': valueSignature?.toJson(),
      'valueString': valueString,
      'valueTime': valueTime,
      'valueTiming': valueTiming?.toJson(),
      'valueTriggerDefinition': valueTriggerDefinition?.toJson(),
      'valueUnsignedInt': valueUnsignedInt,
      'valueUri': valueUri,
      'valueUrl': valueUrl,
      'valueUsageContext': valueUsageContext?.toJson(),
      'valueUuid': valueUuid,
    };
  
  @override
  ParametersParameter copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    List<ParametersParameter>? fhirPart,
    Resource? resource,
    Address? valueAddress,
    Age? valueAge,
    Annotation? valueAnnotation,
    Attachment? valueAttachment,
    String? valueBase64Binary,
    bool? valueBoolean,
    String? valueCanonical,
    String? valueCode,
    CodeableConcept? valueCodeableConcept,
    Coding? valueCoding,
    ContactDetail? valueContactDetail,
    ContactPoint? valueContactPoint,
    Contributor? valueContributor,
    Count? valueCount,
    DataRequirement? valueDataRequirement,
    String? valueDate,
    String? valueDateTime,
    num? valueDecimal,
    Distance? valueDistance,
    Dosage? valueDosage,
    Duration? valueDuration,
    Expression? valueExpression,
    HumanName? valueHumanName,
    String? valueId,
    Identifier? valueIdentifier,
    String? valueInstant,
    int? valueInteger,
    String? valueMarkdown,
    Meta? valueMeta,
    Money? valueMoney,
    String? valueOid,
    ParameterDefinition? valueParameterDefinition,
    Period? valuePeriod,
    int? valuePositiveInt,
    Quantity? valueQuantity,
    Range? valueRange,
    Ratio? valueRatio,
    Reference? valueReference,
    RelatedArtifact? valueRelatedArtifact,
    SampledData? valueSampledData,
    Signature? valueSignature,
    String? valueString,
    String? valueTime,
    Timing? valueTiming,
    TriggerDefinition? valueTriggerDefinition,
    int? valueUnsignedInt,
    String? valueUri,
    String? valueUrl,
    UsageContext? valueUsageContext,
    String? valueUuid,
  }) {
    return ParametersParameter(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      fhirPart: fhirPart ?? this.fhirPart,
      resource: resource ?? this.resource,
      valueAddress: valueAddress ?? this.valueAddress,
      valueAge: valueAge ?? this.valueAge,
      valueAnnotation: valueAnnotation ?? this.valueAnnotation,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCode: valueCode ?? this.valueCode,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueCoding: valueCoding ?? this.valueCoding,
      valueContactDetail: valueContactDetail ?? this.valueContactDetail,
      valueContactPoint: valueContactPoint ?? this.valueContactPoint,
      valueContributor: valueContributor ?? this.valueContributor,
      valueCount: valueCount ?? this.valueCount,
      valueDataRequirement: valueDataRequirement ?? this.valueDataRequirement,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDistance: valueDistance ?? this.valueDistance,
      valueDosage: valueDosage ?? this.valueDosage,
      valueDuration: valueDuration ?? this.valueDuration,
      valueExpression: valueExpression ?? this.valueExpression,
      valueHumanName: valueHumanName ?? this.valueHumanName,
      valueId: valueId ?? this.valueId,
      valueIdentifier: valueIdentifier ?? this.valueIdentifier,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInteger: valueInteger ?? this.valueInteger,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueMeta: valueMeta ?? this.valueMeta,
      valueMoney: valueMoney ?? this.valueMoney,
      valueOid: valueOid ?? this.valueOid,
      valueParameterDefinition: valueParameterDefinition ?? this.valueParameterDefinition,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueReference: valueReference ?? this.valueReference,
      valueRelatedArtifact: valueRelatedArtifact ?? this.valueRelatedArtifact,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueSignature: valueSignature ?? this.valueSignature,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
      valueTiming: valueTiming ?? this.valueTiming,
      valueTriggerDefinition: valueTriggerDefinition ?? this.valueTriggerDefinition,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUri: valueUri ?? this.valueUri,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUsageContext: valueUsageContext ?? this.valueUsageContext,
      valueUuid: valueUuid ?? this.valueUuid,
    );
  }
}

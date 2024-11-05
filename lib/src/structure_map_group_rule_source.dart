part of '../fhir_dart.dart';

/// Source inputs to the mapping.
class StructureMapGroupRuleSource extends BackboneElement
    implements FhirResource {
  /// FHIRPath expression  - must be true or the mapping engine throws an error instead of completing.
  final String? check;

  /// FHIRPath expression  - must be true or the rule does not apply.
  final String? condition;

  /// Type or variable this rule applies to.
  final String context;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Address? defaultValueAddress;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Age? defaultValueAge;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Annotation? defaultValueAnnotation;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Attachment? defaultValueAttachment;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueBase64Binary;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final bool? defaultValueBoolean;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueCanonical;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueCode;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final CodeableConcept? defaultValueCodeableConcept;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Coding? defaultValueCoding;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final ContactDetail? defaultValueContactDetail;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final ContactPoint? defaultValueContactPoint;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Contributor? defaultValueContributor;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Count? defaultValueCount;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final DataRequirement? defaultValueDataRequirement;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueDate;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueDateTime;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final num? defaultValueDecimal;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Distance? defaultValueDistance;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Dosage? defaultValueDosage;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Duration? defaultValueDuration;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Expression? defaultValueExpression;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final HumanName? defaultValueHumanName;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueId;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Identifier? defaultValueIdentifier;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueInstant;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final int? defaultValueInteger;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueMarkdown;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Meta? defaultValueMeta;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Money? defaultValueMoney;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueOid;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final ParameterDefinition? defaultValueParameterDefinition;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Period? defaultValuePeriod;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final int? defaultValuePositiveInt;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Quantity? defaultValueQuantity;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Range? defaultValueRange;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Ratio? defaultValueRatio;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Reference? defaultValueReference;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final SampledData? defaultValueSampledData;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Signature? defaultValueSignature;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueString;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueTime;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final Timing? defaultValueTiming;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final int? defaultValueUnsignedInt;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueUri;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueUrl;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final UsageContext? defaultValueUsageContext;

  /// Default value if no value exists
  /// A value to use if there is no existing value in the source object.
  /// If there's a default value on an item that can repeat, it will only be used once.
  final String? defaultValueUuid;

  /// Optional field for this source.
  final String? element;

  /// How to handle the list mode for this element.
  final String?
      listMode; // Possible values: 'first', 'not_first', 'last', 'not_last', 'only_one'
  /// Message to put in log if source exists (FHIRPath)
  /// A FHIRPath expression which specifies a message to put in the transform log when content matching the source rule is found.
  /// This is typically used for recording that something Is not transformed to the target for some reason.
  final String? logMessage;

  /// Specified maximum cardinality (number or *)
  /// Specified maximum cardinality for the element - a number or a "*". This is optional; if present, it acts an implicit check on the input content (* just serves as documentation; it's the default value).
  final String? max;

  /// Specified minimum cardinality for the element. This is optional; if present, it acts an implicit check on the input content.
  final int? min;

  /// Rule only applies if source has this type
  /// Specified type for the element. This works as a condition on the mapping - use for polymorphic elements.
  final String? type;

  /// Named context for field, if a field is specified.
  final String? variable;
  StructureMapGroupRuleSource({
    this.check,
    this.condition,
    required this.context,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueBase64Binary,
    this.defaultValueBoolean,
    this.defaultValueCanonical,
    this.defaultValueCode,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactDetail,
    this.defaultValueContactPoint,
    this.defaultValueContributor,
    this.defaultValueCount,
    this.defaultValueDataRequirement,
    this.defaultValueDate,
    this.defaultValueDateTime,
    this.defaultValueDecimal,
    this.defaultValueDistance,
    this.defaultValueDosage,
    this.defaultValueDuration,
    this.defaultValueExpression,
    this.defaultValueHumanName,
    this.defaultValueId,
    this.defaultValueIdentifier,
    this.defaultValueInstant,
    this.defaultValueInteger,
    this.defaultValueMarkdown,
    this.defaultValueMeta,
    this.defaultValueMoney,
    this.defaultValueOid,
    this.defaultValueParameterDefinition,
    this.defaultValuePeriod,
    this.defaultValuePositiveInt,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueRelatedArtifact,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueString,
    this.defaultValueTime,
    this.defaultValueTiming,
    this.defaultValueTriggerDefinition,
    this.defaultValueUnsignedInt,
    this.defaultValueUri,
    this.defaultValueUrl,
    this.defaultValueUsageContext,
    this.defaultValueUuid,
    this.element,
    super.fhirExtension,
    super.id,
    this.listMode,
    this.logMessage,
    this.max,
    this.min,
    super.modifierExtension,
    this.type,
    this.variable,
  });

  @override
  factory StructureMapGroupRuleSource.fromJson(Map<String, dynamic> json) {
    return StructureMapGroupRuleSource(
      check: json['check'] as String?,
      condition: json['condition'] as String?,
      context: json['context'] as String,
      defaultValueAddress: json['defaultValueAddress'] != null
          ? Address.fromJson(
              (json['defaultValueAddress'] as Map).cast<String, dynamic>())
          : null,
      defaultValueAge: json['defaultValueAge'] != null
          ? Age.fromJson(
              (json['defaultValueAge'] as Map).cast<String, dynamic>())
          : null,
      defaultValueAnnotation: json['defaultValueAnnotation'] != null
          ? Annotation.fromJson(
              (json['defaultValueAnnotation'] as Map).cast<String, dynamic>())
          : null,
      defaultValueAttachment: json['defaultValueAttachment'] != null
          ? Attachment.fromJson(
              (json['defaultValueAttachment'] as Map).cast<String, dynamic>())
          : null,
      defaultValueBase64Binary: json['defaultValueBase64Binary'] as String?,
      defaultValueBoolean: json['defaultValueBoolean'] as bool?,
      defaultValueCanonical: json['defaultValueCanonical'] as String?,
      defaultValueCode: json['defaultValueCode'] as String?,
      defaultValueCodeableConcept: json['defaultValueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['defaultValueCodeableConcept'] as Map)
                  .cast<String, dynamic>())
          : null,
      defaultValueCoding: json['defaultValueCoding'] != null
          ? Coding.fromJson(
              (json['defaultValueCoding'] as Map).cast<String, dynamic>())
          : null,
      defaultValueContactDetail: json['defaultValueContactDetail'] != null
          ? ContactDetail.fromJson((json['defaultValueContactDetail'] as Map)
              .cast<String, dynamic>())
          : null,
      defaultValueContactPoint: json['defaultValueContactPoint'] != null
          ? ContactPoint.fromJson(
              (json['defaultValueContactPoint'] as Map).cast<String, dynamic>())
          : null,
      defaultValueContributor: json['defaultValueContributor'] != null
          ? Contributor.fromJson(
              (json['defaultValueContributor'] as Map).cast<String, dynamic>())
          : null,
      defaultValueCount: json['defaultValueCount'] != null
          ? Count.fromJson(
              (json['defaultValueCount'] as Map).cast<String, dynamic>())
          : null,
      defaultValueDataRequirement: json['defaultValueDataRequirement'] != null
          ? DataRequirement.fromJson(
              (json['defaultValueDataRequirement'] as Map)
                  .cast<String, dynamic>())
          : null,
      defaultValueDate: json['defaultValueDate'] as String?,
      defaultValueDateTime: json['defaultValueDateTime'] as String?,
      defaultValueDecimal: json['defaultValueDecimal'] as num?,
      defaultValueDistance: json['defaultValueDistance'] != null
          ? Distance.fromJson(
              (json['defaultValueDistance'] as Map).cast<String, dynamic>())
          : null,
      defaultValueDosage: json['defaultValueDosage'] != null
          ? Dosage.fromJson(
              (json['defaultValueDosage'] as Map).cast<String, dynamic>())
          : null,
      defaultValueDuration: json['defaultValueDuration'] != null
          ? Duration.fromJson(
              (json['defaultValueDuration'] as Map).cast<String, dynamic>())
          : null,
      defaultValueExpression: json['defaultValueExpression'] != null
          ? Expression.fromJson(
              (json['defaultValueExpression'] as Map).cast<String, dynamic>())
          : null,
      defaultValueHumanName: json['defaultValueHumanName'] != null
          ? HumanName.fromJson(
              (json['defaultValueHumanName'] as Map).cast<String, dynamic>())
          : null,
      defaultValueId: json['defaultValueId'] as String?,
      defaultValueIdentifier: json['defaultValueIdentifier'] != null
          ? Identifier.fromJson(
              (json['defaultValueIdentifier'] as Map).cast<String, dynamic>())
          : null,
      defaultValueInstant: json['defaultValueInstant'] as String?,
      defaultValueInteger: json['defaultValueInteger'] as int?,
      defaultValueMarkdown: json['defaultValueMarkdown'] as String?,
      defaultValueMeta: json['defaultValueMeta'] != null
          ? Meta.fromJson(
              (json['defaultValueMeta'] as Map).cast<String, dynamic>())
          : null,
      defaultValueMoney: json['defaultValueMoney'] != null
          ? Money.fromJson(
              (json['defaultValueMoney'] as Map).cast<String, dynamic>())
          : null,
      defaultValueOid: json['defaultValueOid'] as String?,
      defaultValueParameterDefinition:
          json['defaultValueParameterDefinition'] != null
              ? ParameterDefinition.fromJson(
                  (json['defaultValueParameterDefinition'] as Map)
                      .cast<String, dynamic>())
              : null,
      defaultValuePeriod: json['defaultValuePeriod'] != null
          ? Period.fromJson(
              (json['defaultValuePeriod'] as Map).cast<String, dynamic>())
          : null,
      defaultValuePositiveInt: json['defaultValuePositiveInt'] as int?,
      defaultValueQuantity: json['defaultValueQuantity'] != null
          ? Quantity.fromJson(
              (json['defaultValueQuantity'] as Map).cast<String, dynamic>())
          : null,
      defaultValueRange: json['defaultValueRange'] != null
          ? Range.fromJson(
              (json['defaultValueRange'] as Map).cast<String, dynamic>())
          : null,
      defaultValueRatio: json['defaultValueRatio'] != null
          ? Ratio.fromJson(
              (json['defaultValueRatio'] as Map).cast<String, dynamic>())
          : null,
      defaultValueReference: json['defaultValueReference'] != null
          ? Reference.fromJson(
              (json['defaultValueReference'] as Map).cast<String, dynamic>())
          : null,
      defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              (json['defaultValueRelatedArtifact'] as Map)
                  .cast<String, dynamic>())
          : null,
      defaultValueSampledData: json['defaultValueSampledData'] != null
          ? SampledData.fromJson(
              (json['defaultValueSampledData'] as Map).cast<String, dynamic>())
          : null,
      defaultValueSignature: json['defaultValueSignature'] != null
          ? Signature.fromJson(
              (json['defaultValueSignature'] as Map).cast<String, dynamic>())
          : null,
      defaultValueString: json['defaultValueString'] as String?,
      defaultValueTime: json['defaultValueTime'] as String?,
      defaultValueTiming: json['defaultValueTiming'] != null
          ? Timing.fromJson(
              (json['defaultValueTiming'] as Map).cast<String, dynamic>())
          : null,
      defaultValueTriggerDefinition:
          json['defaultValueTriggerDefinition'] != null
              ? TriggerDefinition.fromJson(
                  (json['defaultValueTriggerDefinition'] as Map)
                      .cast<String, dynamic>())
              : null,
      defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int?,
      defaultValueUri: json['defaultValueUri'] as String?,
      defaultValueUrl: json['defaultValueUrl'] as String?,
      defaultValueUsageContext: json['defaultValueUsageContext'] != null
          ? UsageContext.fromJson(
              (json['defaultValueUsageContext'] as Map).cast<String, dynamic>())
          : null,
      defaultValueUuid: json['defaultValueUuid'] as String?,
      element: json['element'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      listMode: json['listMode'] as String?,
      logMessage: json['logMessage'] as String?,
      max: json['max'] as String?,
      min: json['min'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] as String?,
      variable: json['variable'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'check': check,
        'condition': condition,
        'context': context,
        'defaultValueAddress': defaultValueAddress?.toJson(),
        'defaultValueAge': defaultValueAge?.toJson(),
        'defaultValueAnnotation': defaultValueAnnotation?.toJson(),
        'defaultValueAttachment': defaultValueAttachment?.toJson(),
        'defaultValueBase64Binary': defaultValueBase64Binary,
        'defaultValueBoolean': defaultValueBoolean,
        'defaultValueCanonical': defaultValueCanonical,
        'defaultValueCode': defaultValueCode,
        'defaultValueCodeableConcept': defaultValueCodeableConcept?.toJson(),
        'defaultValueCoding': defaultValueCoding?.toJson(),
        'defaultValueContactDetail': defaultValueContactDetail?.toJson(),
        'defaultValueContactPoint': defaultValueContactPoint?.toJson(),
        'defaultValueContributor': defaultValueContributor?.toJson(),
        'defaultValueCount': defaultValueCount?.toJson(),
        'defaultValueDataRequirement': defaultValueDataRequirement?.toJson(),
        'defaultValueDate': defaultValueDate,
        'defaultValueDateTime': defaultValueDateTime,
        'defaultValueDecimal': defaultValueDecimal,
        'defaultValueDistance': defaultValueDistance?.toJson(),
        'defaultValueDosage': defaultValueDosage?.toJson(),
        'defaultValueDuration': defaultValueDuration?.toJson(),
        'defaultValueExpression': defaultValueExpression?.toJson(),
        'defaultValueHumanName': defaultValueHumanName?.toJson(),
        'defaultValueId': defaultValueId,
        'defaultValueIdentifier': defaultValueIdentifier?.toJson(),
        'defaultValueInstant': defaultValueInstant,
        'defaultValueInteger': defaultValueInteger,
        'defaultValueMarkdown': defaultValueMarkdown,
        'defaultValueMeta': defaultValueMeta?.toJson(),
        'defaultValueMoney': defaultValueMoney?.toJson(),
        'defaultValueOid': defaultValueOid,
        'defaultValueParameterDefinition':
            defaultValueParameterDefinition?.toJson(),
        'defaultValuePeriod': defaultValuePeriod?.toJson(),
        'defaultValuePositiveInt': defaultValuePositiveInt,
        'defaultValueQuantity': defaultValueQuantity?.toJson(),
        'defaultValueRange': defaultValueRange?.toJson(),
        'defaultValueRatio': defaultValueRatio?.toJson(),
        'defaultValueReference': defaultValueReference?.toJson(),
        'defaultValueRelatedArtifact': defaultValueRelatedArtifact?.toJson(),
        'defaultValueSampledData': defaultValueSampledData?.toJson(),
        'defaultValueSignature': defaultValueSignature?.toJson(),
        'defaultValueString': defaultValueString,
        'defaultValueTime': defaultValueTime,
        'defaultValueTiming': defaultValueTiming?.toJson(),
        'defaultValueTriggerDefinition':
            defaultValueTriggerDefinition?.toJson(),
        'defaultValueUnsignedInt': defaultValueUnsignedInt,
        'defaultValueUri': defaultValueUri,
        'defaultValueUrl': defaultValueUrl,
        'defaultValueUsageContext': defaultValueUsageContext?.toJson(),
        'defaultValueUuid': defaultValueUuid,
        'element': element,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'listMode': listMode,
        'logMessage': logMessage,
        'max': max,
        'min': min,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type,
        'variable': variable,
      };

  @override
  StructureMapGroupRuleSource copyWith({
    String? check,
    String? condition,
    String? context,
    Address? defaultValueAddress,
    Age? defaultValueAge,
    Annotation? defaultValueAnnotation,
    Attachment? defaultValueAttachment,
    String? defaultValueBase64Binary,
    bool? defaultValueBoolean,
    String? defaultValueCanonical,
    String? defaultValueCode,
    CodeableConcept? defaultValueCodeableConcept,
    Coding? defaultValueCoding,
    ContactDetail? defaultValueContactDetail,
    ContactPoint? defaultValueContactPoint,
    Contributor? defaultValueContributor,
    Count? defaultValueCount,
    DataRequirement? defaultValueDataRequirement,
    String? defaultValueDate,
    String? defaultValueDateTime,
    num? defaultValueDecimal,
    Distance? defaultValueDistance,
    Dosage? defaultValueDosage,
    Duration? defaultValueDuration,
    Expression? defaultValueExpression,
    HumanName? defaultValueHumanName,
    String? defaultValueId,
    Identifier? defaultValueIdentifier,
    String? defaultValueInstant,
    int? defaultValueInteger,
    String? defaultValueMarkdown,
    Meta? defaultValueMeta,
    Money? defaultValueMoney,
    String? defaultValueOid,
    ParameterDefinition? defaultValueParameterDefinition,
    Period? defaultValuePeriod,
    int? defaultValuePositiveInt,
    Quantity? defaultValueQuantity,
    Range? defaultValueRange,
    Ratio? defaultValueRatio,
    Reference? defaultValueReference,
    RelatedArtifact? defaultValueRelatedArtifact,
    SampledData? defaultValueSampledData,
    Signature? defaultValueSignature,
    String? defaultValueString,
    String? defaultValueTime,
    Timing? defaultValueTiming,
    TriggerDefinition? defaultValueTriggerDefinition,
    int? defaultValueUnsignedInt,
    String? defaultValueUri,
    String? defaultValueUrl,
    UsageContext? defaultValueUsageContext,
    String? defaultValueUuid,
    String? element,
    List<Extension>? fhirExtension,
    String? id,
    String? listMode,
    String? logMessage,
    String? max,
    int? min,
    List<Extension>? modifierExtension,
    String? type,
    String? variable,
  }) {
    return StructureMapGroupRuleSource(
      check: check ?? this.check,
      condition: condition ?? this.condition,
      context: context ?? this.context,
      defaultValueAddress: defaultValueAddress ?? this.defaultValueAddress,
      defaultValueAge: defaultValueAge ?? this.defaultValueAge,
      defaultValueAnnotation:
          defaultValueAnnotation ?? this.defaultValueAnnotation,
      defaultValueAttachment:
          defaultValueAttachment ?? this.defaultValueAttachment,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueCodeableConcept:
          defaultValueCodeableConcept ?? this.defaultValueCodeableConcept,
      defaultValueCoding: defaultValueCoding ?? this.defaultValueCoding,
      defaultValueContactDetail:
          defaultValueContactDetail ?? this.defaultValueContactDetail,
      defaultValueContactPoint:
          defaultValueContactPoint ?? this.defaultValueContactPoint,
      defaultValueContributor:
          defaultValueContributor ?? this.defaultValueContributor,
      defaultValueCount: defaultValueCount ?? this.defaultValueCount,
      defaultValueDataRequirement:
          defaultValueDataRequirement ?? this.defaultValueDataRequirement,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueDistance: defaultValueDistance ?? this.defaultValueDistance,
      defaultValueDosage: defaultValueDosage ?? this.defaultValueDosage,
      defaultValueDuration: defaultValueDuration ?? this.defaultValueDuration,
      defaultValueExpression:
          defaultValueExpression ?? this.defaultValueExpression,
      defaultValueHumanName:
          defaultValueHumanName ?? this.defaultValueHumanName,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueIdentifier:
          defaultValueIdentifier ?? this.defaultValueIdentifier,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueMeta: defaultValueMeta ?? this.defaultValueMeta,
      defaultValueMoney: defaultValueMoney ?? this.defaultValueMoney,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValueParameterDefinition: defaultValueParameterDefinition ??
          this.defaultValueParameterDefinition,
      defaultValuePeriod: defaultValuePeriod ?? this.defaultValuePeriod,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValueQuantity: defaultValueQuantity ?? this.defaultValueQuantity,
      defaultValueRange: defaultValueRange ?? this.defaultValueRange,
      defaultValueRatio: defaultValueRatio ?? this.defaultValueRatio,
      defaultValueReference:
          defaultValueReference ?? this.defaultValueReference,
      defaultValueRelatedArtifact:
          defaultValueRelatedArtifact ?? this.defaultValueRelatedArtifact,
      defaultValueSampledData:
          defaultValueSampledData ?? this.defaultValueSampledData,
      defaultValueSignature:
          defaultValueSignature ?? this.defaultValueSignature,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueTiming: defaultValueTiming ?? this.defaultValueTiming,
      defaultValueTriggerDefinition:
          defaultValueTriggerDefinition ?? this.defaultValueTriggerDefinition,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUsageContext:
          defaultValueUsageContext ?? this.defaultValueUsageContext,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      element: element ?? this.element,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      listMode: listMode ?? this.listMode,
      logMessage: logMessage ?? this.logMessage,
      max: max ?? this.max,
      min: min ?? this.min,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      variable: variable ?? this.variable,
    );
  }
}

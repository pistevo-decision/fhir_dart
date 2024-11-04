part of '../fhir_dart.dart';

/// Contract Term Asset List.
class ContractTermAsset extends BackboneElement implements FhirResource {
  /// Response to assets.
  final List<ContractTermOfferAnswer>? answer;

  /// Quality desctiption of asset
  /// Description of the quality and completeness of the asset that imay be a factor in its valuation.
  final String? condition;

  /// Circumstance of the asset.
  final List<ContractTermAssetContext>? context;

  /// Pointer to asset text
  /// Id [identifier??] of the clause or question text about the asset in the referenced form or QuestionnaireResponse.
  final List<String>? linkId;

  /// Time period of the asset
  /// Asset relevant contractual time period.
  final List<Period>? period;

  /// Asset availability types
  /// Type of Asset availability for use or ownership.
  final List<CodeableConcept>? periodType;

  /// Kinship of the asset
  /// Specifies the applicability of the term to an asset resource instance, and instances it refers to orinstances that refer to it, and/or are owned by the offeree.
  final Coding? relationship;

  /// Range of asset
  /// Differentiates the kind of the asset .
  final CodeableConcept? scope;

  /// Asset restriction numbers
  /// Security labels that protects the asset.
  final List<int>? securityLabelNumber;

  /// Asset sub-category
  /// May be a subtype or part of an offered asset.
  final List<CodeableConcept>? subtype;

  /// Asset clause or question text
  /// Clause or question text (Prose Object) concerning the asset in a linked form, such as a QuestionnaireResponse used in the formation of the contract.
  final String? text;

  /// Asset category
  /// Target entity type about which the term may be concerned.
  final List<CodeableConcept>? type;

  /// Associated entities.
  final List<Reference>? typeReference;

  /// Time period of asset use.
  final List<Period>? usePeriod;

  /// Contract Valued Item List.
  final List<ContractTermAssetValuedItem>? valuedItem;
  ContractTermAsset({
    this.answer,
    this.condition,
    this.context,
    super.fhirExtension,
    super.id,
    this.linkId,
    super.modifierExtension,
    this.period,
    this.periodType,
    this.relationship,
    this.scope,
    this.securityLabelNumber,
    this.subtype,
    this.text,
    this.type,
    this.typeReference,
    this.usePeriod,
    this.valuedItem,
  });

  @override
  factory ContractTermAsset.fromJson(Map<String, dynamic> json) {
    return ContractTermAsset(
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) =>
              ContractTermOfferAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      condition: json['condition'] as String?,
      context: (json['context'] as List<dynamic>?)
          ?.map((e) =>
              ContractTermAssetContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      linkId:
          (json['linkId'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: (json['period'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      periodType: (json['periodType'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      relationship: json['relationship'] != null
          ? Coding.fromJson(json['relationship'] as Map<String, dynamic>)
          : null,
      scope: json['scope'] != null
          ? CodeableConcept.fromJson(json['scope'] as Map<String, dynamic>)
          : null,
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      typeReference: (json['typeReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      usePeriod: (json['usePeriod'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      valuedItem: (json['valuedItem'] as List<dynamic>?)
          ?.map((e) =>
              ContractTermAssetValuedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'answer': answer?.map((e) => e.toJson()).toList(),
        'condition': condition,
        'context': context?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'linkId': linkId?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.map((e) => e.toJson()).toList(),
        'periodType': periodType?.map((e) => e.toJson()).toList(),
        'relationship': relationship?.toJson(),
        'scope': scope?.toJson(),
        'securityLabelNumber': securityLabelNumber?.map((e) => e).toList(),
        'subtype': subtype?.map((e) => e.toJson()).toList(),
        'text': text,
        'type': type?.map((e) => e.toJson()).toList(),
        'typeReference': typeReference?.map((e) => e.toJson()).toList(),
        'usePeriod': usePeriod?.map((e) => e.toJson()).toList(),
        'valuedItem': valuedItem?.map((e) => e.toJson()).toList(),
      };

  @override
  ContractTermAsset copyWith({
    List<ContractTermOfferAnswer>? answer,
    String? condition,
    List<ContractTermAssetContext>? context,
    List<Extension>? fhirExtension,
    String? id,
    List<String>? linkId,
    List<Extension>? modifierExtension,
    List<Period>? period,
    List<CodeableConcept>? periodType,
    Coding? relationship,
    CodeableConcept? scope,
    List<int>? securityLabelNumber,
    List<CodeableConcept>? subtype,
    String? text,
    List<CodeableConcept>? type,
    List<Reference>? typeReference,
    List<Period>? usePeriod,
    List<ContractTermAssetValuedItem>? valuedItem,
  }) {
    return ContractTermAsset(
      answer: answer ?? this.answer,
      condition: condition ?? this.condition,
      context: context ?? this.context,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      linkId: linkId ?? this.linkId,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      periodType: periodType ?? this.periodType,
      relationship: relationship ?? this.relationship,
      scope: scope ?? this.scope,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      subtype: subtype ?? this.subtype,
      text: text ?? this.text,
      type: type ?? this.type,
      typeReference: typeReference ?? this.typeReference,
      usePeriod: usePeriod ?? this.usePeriod,
      valuedItem: valuedItem ?? this.valuedItem,
    );
  }
}

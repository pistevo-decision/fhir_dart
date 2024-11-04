part of '../fhir_dart.dart';

/// Response to offer text.
class ContractTermOfferAnswer extends BackboneElement implements FhirResource {
  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final Attachment? valueAttachment;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final bool? valueBoolean;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final Coding? valueCoding;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final String? valueDate;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final String? valueDateTime;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final num? valueDecimal;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final int? valueInteger;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final Quantity? valueQuantity;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final Reference? valueReference;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final String? valueString;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final String? valueTime;

  /// The actual answer response
  /// Response to an offer clause or question text,  which enables selection of values to be agreed to, e.g., the period of participation, the date of occupancy of a rental, warrently duration, or whether biospecimen may be used for further research.
  final String? valueUri;
  ContractTermOfferAnswer({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.valueAttachment,
    this.valueBoolean,
    this.valueCoding,
    this.valueDate,
    this.valueDateTime,
    this.valueDecimal,
    this.valueInteger,
    this.valueQuantity,
    this.valueReference,
    this.valueString,
    this.valueTime,
    this.valueUri,
  });

  @override
  factory ContractTermOfferAnswer.fromJson(Map<String, dynamic> json) {
    return ContractTermOfferAnswer(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] as bool?,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] as String?,
      valueDateTime: json['valueDateTime'] as String?,
      valueDecimal: json['valueDecimal'] as num?,
      valueInteger: json['valueInteger'] as int?,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
      valueString: json['valueString'] as String?,
      valueTime: json['valueTime'] as String?,
      valueUri: json['valueUri'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'valueAttachment': valueAttachment?.toJson(),
        'valueBoolean': valueBoolean,
        'valueCoding': valueCoding?.toJson(),
        'valueDate': valueDate,
        'valueDateTime': valueDateTime,
        'valueDecimal': valueDecimal,
        'valueInteger': valueInteger,
        'valueQuantity': valueQuantity?.toJson(),
        'valueReference': valueReference?.toJson(),
        'valueString': valueString,
        'valueTime': valueTime,
        'valueUri': valueUri,
      };

  @override
  ContractTermOfferAnswer copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Attachment? valueAttachment,
    bool? valueBoolean,
    Coding? valueCoding,
    String? valueDate,
    String? valueDateTime,
    num? valueDecimal,
    int? valueInteger,
    Quantity? valueQuantity,
    Reference? valueReference,
    String? valueString,
    String? valueTime,
    String? valueUri,
  }) {
    return ContractTermOfferAnswer(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCoding: valueCoding ?? this.valueCoding,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueInteger: valueInteger ?? this.valueInteger,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueReference: valueReference ?? this.valueReference,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
      valueUri: valueUri ?? this.valueUri,
    );
  }
}

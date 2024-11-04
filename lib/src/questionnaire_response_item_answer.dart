part of '../fhir_dart.dart';

/// The response(s) to the question
/// The respondent's answer(s) to the question.
/// The value is nested because we cannot have a repeating structure that has variable type.
class QuestionnaireResponseItemAnswer extends BackboneElement
    implements FhirResource {
  /// Nested groups and questions
  /// Nested groups and/or questions found within this particular answer.
  final List<QuestionnaireResponseItem>? item;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final Attachment? valueAttachment;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final bool? valueBoolean;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final Coding? valueCoding;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final String? valueDate;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final String? valueDateTime;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final num? valueDecimal;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final int? valueInteger;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final Quantity? valueQuantity;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final Reference? valueReference;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final String? valueString;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final String? valueTime;

  /// Single-valued answer to the question
  /// The answer (or one of the answers) provided by the respondent to the question.
  /// More complex structures (Attachment, Resource and Quantity) will typically be limited to electronic forms that can expose an appropriate user interface to capture the components and enforce the constraints of a complex data type.  Additional complex types can be introduced through extensions. Must match the datatype specified by Questionnaire.item.type in the corresponding Questionnaire.
  final String? valueUri;
  QuestionnaireResponseItemAnswer({
    super.fhirExtension,
    super.id,
    this.item,
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
  factory QuestionnaireResponseItemAnswer.fromJson(Map<String, dynamic> json) {
    return QuestionnaireResponseItemAnswer(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      item: (json['item'] as List<dynamic>?)
          ?.map((e) =>
              QuestionnaireResponseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
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
        'item': item?.map((e) => e.toJson()).toList(),
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
  QuestionnaireResponseItemAnswer copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<QuestionnaireResponseItem>? item,
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
    return QuestionnaireResponseItemAnswer(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      item: item ?? this.item,
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

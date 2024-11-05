part of '../fhir_dart.dart';

/// Initial value(s) when item is first rendered
/// One or more values that should be pre-populated in the answer when initially rendering the questionnaire for user input.
/// The user is allowed to change the value and override the default (unless marked as read-only). If the user doesn't change the value, then this initial value will be persisted when the QuestionnaireResponse is initially created.  Note that initial values can influence results.  The data type of initial[x] must agree with the item.type, and only repeating items can have more then one initial value.
class QuestionnaireItemInitial extends BackboneElement implements FhirResource {
  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final Attachment? valueAttachment;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final bool? valueBoolean;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final Coding? valueCoding;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final String? valueDate;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final String? valueDateTime;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final num? valueDecimal;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final int? valueInteger;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final Quantity? valueQuantity;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final Reference? valueReference;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final String? valueString;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final String? valueTime;

  /// Actual value for initializing the question
  /// The actual value to for an initial answer.
  /// The type of the initial value must be consistent with the type of the item.
  final String? valueUri;
  QuestionnaireItemInitial({
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
  factory QuestionnaireItemInitial.fromJson(Map<String, dynamic> json) {
    return QuestionnaireItemInitial(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              (json['valueAttachment'] as Map).cast<String, dynamic>())
          : null,
      valueBoolean: json['valueBoolean'] as bool?,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              (json['valueCoding'] as Map).cast<String, dynamic>())
          : null,
      valueDate: json['valueDate'] as String?,
      valueDateTime: json['valueDateTime'] as String?,
      valueDecimal: json['valueDecimal'] as num?,
      valueInteger: json['valueInteger'] as int?,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              (json['valueQuantity'] as Map).cast<String, dynamic>())
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              (json['valueReference'] as Map).cast<String, dynamic>())
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
  QuestionnaireItemInitial copyWith({
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
    return QuestionnaireItemInitial(
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

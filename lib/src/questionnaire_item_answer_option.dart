part of '../fhir_dart.dart';

/// Permitted answer
/// One of the permitted answers for a "choice" or "open-choice" question.
/// This element can be used when the value set machinery of answerValueSet is deemed too cumbersome or when there's a need to capture possible answers that are not codes.
class QuestionnaireItemAnswerOption extends BackboneElement
    implements FhirResource {
  /// Whether option is selected by default
  /// Indicates whether the answer value is selected when the list of possible answers is initially shown.
  /// Use this instead of initial[v] if answerValueSet is present.
  final bool? initialSelected;

  /// Answer value
  /// A potential answer that's allowed as the answer to this question.
  /// The data type of the value must agree with the item.type.
  final Coding? valueCoding;

  /// Answer value
  /// A potential answer that's allowed as the answer to this question.
  /// The data type of the value must agree with the item.type.
  final String? valueDate;

  /// Answer value
  /// A potential answer that's allowed as the answer to this question.
  /// The data type of the value must agree with the item.type.
  final int? valueInteger;

  /// Answer value
  /// A potential answer that's allowed as the answer to this question.
  /// The data type of the value must agree with the item.type.
  final Reference? valueReference;

  /// Answer value
  /// A potential answer that's allowed as the answer to this question.
  /// The data type of the value must agree with the item.type.
  final String? valueString;

  /// Answer value
  /// A potential answer that's allowed as the answer to this question.
  /// The data type of the value must agree with the item.type.
  final String? valueTime;
  QuestionnaireItemAnswerOption({
    super.fhirExtension,
    super.id,
    this.initialSelected,
    super.modifierExtension,
    this.valueCoding,
    this.valueDate,
    this.valueInteger,
    this.valueReference,
    this.valueString,
    this.valueTime,
  });

  @override
  factory QuestionnaireItemAnswerOption.fromJson(Map<String, dynamic> json) {
    return QuestionnaireItemAnswerOption(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      initialSelected: json['initialSelected'] as bool?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] as String?,
      valueInteger: json['valueInteger'] as int?,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
      valueString: json['valueString'] as String?,
      valueTime: json['valueTime'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'initialSelected': initialSelected,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'valueCoding': valueCoding?.toJson(),
        'valueDate': valueDate,
        'valueInteger': valueInteger,
        'valueReference': valueReference?.toJson(),
        'valueString': valueString,
        'valueTime': valueTime,
      };

  @override
  QuestionnaireItemAnswerOption copyWith({
    List<Extension>? fhirExtension,
    String? id,
    bool? initialSelected,
    List<Extension>? modifierExtension,
    Coding? valueCoding,
    String? valueDate,
    int? valueInteger,
    Reference? valueReference,
    String? valueString,
    String? valueTime,
  }) {
    return QuestionnaireItemAnswerOption(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      initialSelected: initialSelected ?? this.initialSelected,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueCoding: valueCoding ?? this.valueCoding,
      valueDate: valueDate ?? this.valueDate,
      valueInteger: valueInteger ?? this.valueInteger,
      valueReference: valueReference ?? this.valueReference,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
    );
  }
}

part of '../fhir_dart.dart';

/// Only allow data when
/// A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the specified condition is true.
/// If multiple repetitions of this extension are present, the item should be enabled when the condition for *any* of the repetitions is true.  I.e. treat "enableWhen"s as being joined by an "or" clause.  This element is a modifier because if enableWhen is present for an item, "required" is ignored unless one of the enableWhen conditions is met. When an item is disabled, all of its descendants are disabled, regardless of what their own enableWhen logic might evaluate to.
class QuestionnaireItemEnableWhen extends BackboneElement
    implements FhirResource {
  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final bool? answerBoolean;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final Coding? answerCoding;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final String? answerDate;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final String? answerDateTime;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final num? answerDecimal;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final int? answerInteger;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final Quantity? answerQuantity;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final Reference? answerReference;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final String? answerString;

  /// Value for question comparison based on operator
  /// A value that the referenced question is tested using the specified operator in order for the item to be enabled.
  final String? answerTime;

  /// Specifies the criteria by which the question is enabled.
  final String
      fhirOperator; // Possible values: 'exists', '=', '!=', '>', '<', '>=', '<='
  /// Question that determines whether item is enabled
  /// The linkId for the question whose answer (or lack of answer) governs whether this item is enabled.
  /// If multiple question occurrences are present for the same question (same linkId), then this refers to the nearest question occurrence reachable by tracing first the "ancestor" axis and then the "preceding" axis and then the "following" axis.
  final String question;
  QuestionnaireItemEnableWhen({
    this.answerBoolean,
    this.answerCoding,
    this.answerDate,
    this.answerDateTime,
    this.answerDecimal,
    this.answerInteger,
    this.answerQuantity,
    this.answerReference,
    this.answerString,
    this.answerTime,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.fhirOperator,
    required this.question,
  });

  @override
  factory QuestionnaireItemEnableWhen.fromJson(Map<String, dynamic> json) {
    return QuestionnaireItemEnableWhen(
      answerBoolean: json['answerBoolean'] as bool?,
      answerCoding: json['answerCoding'] != null
          ? Coding.fromJson(
              (json['answerCoding'] as Map).cast<String, dynamic>())
          : null,
      answerDate: json['answerDate'] as String?,
      answerDateTime: json['answerDateTime'] as String?,
      answerDecimal: json['answerDecimal'] as num?,
      answerInteger: json['answerInteger'] as int?,
      answerQuantity: json['answerQuantity'] != null
          ? Quantity.fromJson(
              (json['answerQuantity'] as Map).cast<String, dynamic>())
          : null,
      answerReference: json['answerReference'] != null
          ? Reference.fromJson(
              (json['answerReference'] as Map).cast<String, dynamic>())
          : null,
      answerString: json['answerString'] as String?,
      answerTime: json['answerTime'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirOperator: json['operator'] as String,
      question: json['question'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'answerBoolean': answerBoolean,
        'answerCoding': answerCoding?.toJson(),
        'answerDate': answerDate,
        'answerDateTime': answerDateTime,
        'answerDecimal': answerDecimal,
        'answerInteger': answerInteger,
        'answerQuantity': answerQuantity?.toJson(),
        'answerReference': answerReference?.toJson(),
        'answerString': answerString,
        'answerTime': answerTime,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operator': fhirOperator,
        'question': question,
      };

  @override
  QuestionnaireItemEnableWhen copyWith({
    bool? answerBoolean,
    Coding? answerCoding,
    String? answerDate,
    String? answerDateTime,
    num? answerDecimal,
    int? answerInteger,
    Quantity? answerQuantity,
    Reference? answerReference,
    String? answerString,
    String? answerTime,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? fhirOperator,
    String? question,
  }) {
    return QuestionnaireItemEnableWhen(
      answerBoolean: answerBoolean ?? this.answerBoolean,
      answerCoding: answerCoding ?? this.answerCoding,
      answerDate: answerDate ?? this.answerDate,
      answerDateTime: answerDateTime ?? this.answerDateTime,
      answerDecimal: answerDecimal ?? this.answerDecimal,
      answerInteger: answerInteger ?? this.answerInteger,
      answerQuantity: answerQuantity ?? this.answerQuantity,
      answerReference: answerReference ?? this.answerReference,
      answerString: answerString ?? this.answerString,
      answerTime: answerTime ?? this.answerTime,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      fhirOperator: fhirOperator ?? this.fhirOperator,
      question: question ?? this.question,
    );
  }
}

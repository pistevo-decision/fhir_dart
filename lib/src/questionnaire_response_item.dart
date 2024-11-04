part of '../fhir_dart.dart';

/// Groups and questions
/// A group or question item from the original questionnaire for which answers are provided.
/// Groups cannot have answers and therefore must nest directly within item. When dealing with questions, nesting must occur within each answer because some questions may have multiple answers (and the nesting occurs for each answer).
class QuestionnaireResponseItem extends BackboneElement
    implements FhirResource {
  /// The response(s) to the question
  /// The respondent's answer(s) to the question.
  /// The value is nested because we cannot have a repeating structure that has variable type.
  final List<QuestionnaireResponseItemAnswer>? answer;

  /// ElementDefinition - details for the item
  /// A reference to an [ElementDefinition](elementdefinition.html) that provides the details for the item.
  /// The ElementDefinition must be in a [StructureDefinition](structuredefinition.html#), and must have a fragment identifier that identifies the specific data element by its id (Element.id). E.g. http://hl7.org/fhir/StructureDefinition/Observation#Observation.value[x].
  /// There is no need for this element if the item pointed to by the linkId has a definition listed.
  final String? definition;

  /// Nested questionnaire response items
  /// Questions or sub-groups nested beneath a question or group.
  final List<QuestionnaireResponseItem>? item;

  /// Pointer to specific item from Questionnaire
  /// The item from the Questionnaire that corresponds to this item in the QuestionnaireResponse resource.
  final String linkId;

  /// Name for group or question text
  /// Text that is displayed above the contents of the group or as the text of the question being answered.
  final String? text;
  QuestionnaireResponseItem({
    this.answer,
    this.definition,
    super.fhirExtension,
    super.id,
    this.item,
    required this.linkId,
    super.modifierExtension,
    this.text,
  });

  @override
  factory QuestionnaireResponseItem.fromJson(Map<String, dynamic> json) {
    return QuestionnaireResponseItem(
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) => QuestionnaireResponseItemAnswer.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      definition: json['definition'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      item: (json['item'] as List<dynamic>?)
          ?.map((e) =>
              QuestionnaireResponseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      linkId: json['linkId'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'answer': answer?.map((e) => e.toJson()).toList(),
        'definition': definition,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'item': item?.map((e) => e.toJson()).toList(),
        'linkId': linkId,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'text': text,
      };

  @override
  QuestionnaireResponseItem copyWith({
    List<QuestionnaireResponseItemAnswer>? answer,
    String? definition,
    List<Extension>? fhirExtension,
    String? id,
    List<QuestionnaireResponseItem>? item,
    String? linkId,
    List<Extension>? modifierExtension,
    String? text,
  }) {
    return QuestionnaireResponseItem(
      answer: answer ?? this.answer,
      definition: definition ?? this.definition,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      item: item ?? this.item,
      linkId: linkId ?? this.linkId,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
    );
  }
}

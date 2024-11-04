part of '../fhir_dart.dart';

/// Questions and sections within the Questionnaire
/// A particular question, question grouping or display text that is part of the questionnaire.
/// The content of the questionnaire is constructed from an ordered, hierarchical collection of items.
class QuestionnaireItem extends BackboneElement implements FhirResource {
  /// Permitted answer
  /// One of the permitted answers for a "choice" or "open-choice" question.
  /// This element can be used when the value set machinery of answerValueSet is deemed too cumbersome or when there's a need to capture possible answers that are not codes.
  final List<QuestionnaireItemAnswerOption>? answerOption;

  /// Valueset containing permitted answers
  /// A reference to a value set containing a list of codes representing permitted answers for a "choice" or "open-choice" question.
  /// LOINC defines many useful value sets for questionnaire responses. See [LOINC Answer Lists](loinc.html#alist). The value may come from the ElementDefinition referred to by .definition.
  final String? answerValueSet;

  /// Corresponding concept for this item in a terminology
  /// A terminology code that corresponds to this group or question (e.g. a code from LOINC, which defines many questions and answers).
  /// The value may come from the ElementDefinition referred to by .definition.
  final List<Coding>? code;

  /// ElementDefinition - details for the item
  /// This element is a URI that refers to an [ElementDefinition](elementdefinition.html) that provides information about this item, including information that might otherwise be included in the instance of the Questionnaire resource. A detailed description of the construction of the URI is shown in Comments, below. If this element is present then the following element values MAY be derived from the Element Definition if the corresponding elements of this Questionnaire resource instance have no value:
  /// * code (ElementDefinition.code)
  /// * type (ElementDefinition.type)
  /// * required (ElementDefinition.min)
  /// * repeats (ElementDefinition.max)
  /// * maxLength (ElementDefinition.maxLength)
  /// * answerValueSet (ElementDefinition.binding)
  /// * options (ElementDefinition.binding).
  /// The uri refers to an ElementDefinition in a [StructureDefinition](structuredefinition.html#) and always starts with the [canonical URL](references.html#canonical) for the target resource. When referring to a StructureDefinition, a fragment identifier is used to specify the element definition by its id [Element.id](element-definitions.html#Element.id). E.g. http://hl7.org/fhir/StructureDefinition/Observation#Observation.value[x]. In the absence of a fragment identifier, the first/root element definition in the target is the matching element definition.
  final String? definition;

  /// all | any
  /// Controls how multiple enableWhen values are interpreted -  whether all or any must be true.
  /// This element must be specified if more than one enableWhen value is provided.
  final String? enableBehavior; // Possible values: 'all', 'any'
  /// Only allow data when
  /// A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the specified condition is true.
  /// If multiple repetitions of this extension are present, the item should be enabled when the condition for *any* of the repetitions is true.  I.e. treat "enableWhen"s as being joined by an "or" clause.  This element is a modifier because if enableWhen is present for an item, "required" is ignored unless one of the enableWhen conditions is met. When an item is disabled, all of its descendants are disabled, regardless of what their own enableWhen logic might evaluate to.
  final List<QuestionnaireItemEnableWhen>? enableWhen;

  /// Initial value(s) when item is first rendered
  /// One or more values that should be pre-populated in the answer when initially rendering the questionnaire for user input.
  /// The user is allowed to change the value and override the default (unless marked as read-only). If the user doesn't change the value, then this initial value will be persisted when the QuestionnaireResponse is initially created.  Note that initial values can influence results.  The data type of initial[x] must agree with the item.type, and only repeating items can have more then one initial value.
  final List<QuestionnaireItemInitial>? initial;

  /// Nested questionnaire items
  /// Text, questions and other groups to be nested beneath a question or group.
  /// There is no specified limit to the depth of nesting.  However, Questionnaire authors are encouraged to consider the impact on the user and user interface of overly deep nesting.
  final List<QuestionnaireItem>? item;

  /// Unique id for item in questionnaire
  /// An identifier that is unique within the Questionnaire allowing linkage to the equivalent item in a QuestionnaireResponse resource.
  /// This ''can'' be a meaningful identifier (e.g. a LOINC code) but is not intended to have any meaning.  GUIDs or sequential numbers are appropriate here.
  final String linkId;

  /// No more than this many characters
  /// The maximum number of characters that are permitted in the answer to be considered a "valid" QuestionnaireResponse.
  /// For base64binary, reflects the number of characters representing the encoded data, not the number of bytes of the binary data. The value may come from the ElementDefinition referred to by .definition.
  final int? maxLength;

  /// E.g. "1(a)", "2.5.3"
  /// A short label for a particular group, question or set of display text within the questionnaire used for reference by the individual completing the questionnaire.
  /// These are generally unique within a questionnaire, though this is not guaranteed. Some questionnaires may have multiple questions with the same label with logic to control which gets exposed.  Typically, these won't be used for "display" items, though such use is not prohibited.  Systems SHOULD NOT generate their own prefixes if prefixes are defined for any items within a Questionnaire.
  final String? prefix;

  /// Don't allow human editing
  /// An indication, when true, that the value cannot be changed by a human respondent to the Questionnaire.
  /// The value of readOnly elements can be established by asserting  extensions for defaultValues, linkages that support pre-population and/or extensions that support calculation based on other answers.
  final bool? readOnly;

  /// Whether the item may repeat
  /// An indication, if true, that the item may occur multiple times in the response, collecting multiple answers for questions or multiple sets of answers for groups.
  /// If a question is marked as repeats=true, then multiple answers can be provided for the question in the corresponding QuestionnaireResponse.  When rendering the questionnaire, it is up to the rendering software whether to render the question text for each answer repetition (i.e. "repeat the question") or to simply allow entry/selection of multiple answers for the question (repeat the answers).  Which is most appropriate visually may depend on the type of answer as well as whether there are nested items.
  /// The resulting QuestionnaireResponse will be populated the same way regardless of rendering - one 'question' item with multiple answer values.
  ///  The value may come from the ElementDefinition referred to by .definition.
  final bool? repeats;

  /// Whether the item must be included in data results
  /// An indication, if true, that the item must be present in a "completed" QuestionnaireResponse.  If false, the item may be skipped when answering the questionnaire.
  /// Questionnaire.item.required only has meaning for elements that are conditionally enabled with enableWhen if the condition evaluates to true.  If an item that contains other items is marked as required, that does not automatically make the contained elements required (though required groups must contain at least one child element). The value may come from the ElementDefinition referred to by .definition.
  final bool? required;

  /// Primary text for the item
  /// The name of a section, the text of a question or text content for a display item.
  /// When using this element to represent the name of a section, use group type item and also make sure to limit the text element to a short string suitable for display as a section heading.  Group item instructions should be included as a display type item within the group.
  final String? text;

  /// The type of questionnaire item this is - whether text for display, a grouping of other items or a particular type of data to be captured (string, integer, coded choice, etc.).
  /// Additional constraints on the type of answer can be conveyed by extensions. The value may come from the ElementDefinition referred to by .definition.
  final String
      type; // Possible values: 'group', 'display', 'boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'text', 'url', 'choice', 'open-choice', 'attachment', 'reference', 'quantity'
  QuestionnaireItem({
    this.answerOption,
    this.answerValueSet,
    this.code,
    this.definition,
    this.enableBehavior,
    this.enableWhen,
    super.fhirExtension,
    super.id,
    this.initial,
    this.item,
    required this.linkId,
    this.maxLength,
    super.modifierExtension,
    this.prefix,
    this.readOnly,
    this.repeats,
    this.required,
    this.text,
    required this.type,
  });

  @override
  factory QuestionnaireItem.fromJson(Map<String, dynamic> json) {
    return QuestionnaireItem(
      answerOption: (json['answerOption'] as List<dynamic>?)
          ?.map((e) =>
              QuestionnaireItemAnswerOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      answerValueSet: json['answerValueSet'] as String?,
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      definition: json['definition'] as String?,
      enableBehavior: json['enableBehavior'] as String?,
      enableWhen: (json['enableWhen'] as List<dynamic>?)
          ?.map((e) =>
              QuestionnaireItemEnableWhen.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      initial: (json['initial'] as List<dynamic>?)
          ?.map((e) =>
              QuestionnaireItemInitial.fromJson(e as Map<String, dynamic>))
          .toList(),
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => QuestionnaireItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      linkId: json['linkId'] as String,
      maxLength: json['maxLength'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      prefix: json['prefix'] as String?,
      readOnly: json['readOnly'] as bool?,
      repeats: json['repeats'] as bool?,
      required: json['required'] as bool?,
      text: json['text'] as String?,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'answerOption': answerOption?.map((e) => e.toJson()).toList(),
        'answerValueSet': answerValueSet,
        'code': code?.map((e) => e.toJson()).toList(),
        'definition': definition,
        'enableBehavior': enableBehavior,
        'enableWhen': enableWhen?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'initial': initial?.map((e) => e.toJson()).toList(),
        'item': item?.map((e) => e.toJson()).toList(),
        'linkId': linkId,
        'maxLength': maxLength,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'prefix': prefix,
        'readOnly': readOnly,
        'repeats': repeats,
        'required': required,
        'text': text,
        'type': type,
      };

  @override
  QuestionnaireItem copyWith({
    List<QuestionnaireItemAnswerOption>? answerOption,
    String? answerValueSet,
    List<Coding>? code,
    String? definition,
    String? enableBehavior,
    List<QuestionnaireItemEnableWhen>? enableWhen,
    List<Extension>? fhirExtension,
    String? id,
    List<QuestionnaireItemInitial>? initial,
    List<QuestionnaireItem>? item,
    String? linkId,
    int? maxLength,
    List<Extension>? modifierExtension,
    String? prefix,
    bool? readOnly,
    bool? repeats,
    bool? required,
    String? text,
    String? type,
  }) {
    return QuestionnaireItem(
      answerOption: answerOption ?? this.answerOption,
      answerValueSet: answerValueSet ?? this.answerValueSet,
      code: code ?? this.code,
      definition: definition ?? this.definition,
      enableBehavior: enableBehavior ?? this.enableBehavior,
      enableWhen: enableWhen ?? this.enableWhen,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      initial: initial ?? this.initial,
      item: item ?? this.item,
      linkId: linkId ?? this.linkId,
      maxLength: maxLength ?? this.maxLength,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      prefix: prefix ?? this.prefix,
      readOnly: readOnly ?? this.readOnly,
      repeats: repeats ?? this.repeats,
      required: required ?? this.required,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}

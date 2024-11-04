part of '../fhir_dart.dart';

 /// The QuestionnaireResponse contains enough information about the questions asked and their organization that it can be interpreted somewhat independently from the Questionnaire it is based on.  I.e. You don't need access to the Questionnaire in order to extract basic information from a QuestionnaireResponse.
 /// A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.
 /// To support structured, hierarchical reporting of data gathered using digital forms and other questionnaires.
class QuestionnaireResponse extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'QuestionnaireResponse';
   /// Person who received and recorded the answers
   /// Person who received the answers to the questions in the QuestionnaireResponse and recorded them in the system.
   /// Mapping a subject's answers to multiple choice options and determining what to put in the textual answer is a matter of interpretation.  Authoring by device would indicate that some portion of the questionnaire had been auto-populated.
  final Reference? author;
   /// Date the answers were gathered
   /// The date and/or time that this set of answers were last changed.
   /// May be different from the lastUpdateTime of the resource itself, because that reflects when the data was known to the server, not when the data was captured.
   /// This element is optional to allow for systems that might not know the value, however it SHOULD be populated if possible.
  final String? authored;
   /// Request fulfilled by this QuestionnaireResponse
   /// The order, proposal or plan that is fulfilled in whole or in part by this QuestionnaireResponse.  For example, a ServiceRequest seeking an intake assessment or a decision support recommendation to assess for post-partum depression.
  final List<Reference>? basedOn;
   /// Encounter created as part of
   /// The Encounter during which this questionnaire response was created or to which the creation of this record is tightly associated.
   /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter. A questionnaire that was initiated during an encounter but not fully completed during the encounter would still generally be associated with the encounter.
  final Reference? encounter;
   /// Unique id for this set of answers
   /// A business identifier assigned to a particular completed (or partially completed) questionnaire.
  final Identifier? identifier;
   /// Groups and questions
   /// A group or question item from the original questionnaire for which answers are provided.
   /// Groups cannot have answers and therefore must nest directly within item. When dealing with questions, nesting must occur within each answer because some questions may have multiple answers (and the nesting occurs for each answer).
  final List<QuestionnaireResponseItem>? item;
   /// Part of this action
   /// A procedure or observation that this questionnaire was performed as part of the execution of.  For example, the surgery a checklist was executed as part of.
   /// Composition of questionnaire responses will be handled by the parent questionnaire having answers that reference the child questionnaire.  For relationships to referrals, and other types of requests, use basedOn.
  final List<Reference>? partOf;
   /// Form being answered
   /// The Questionnaire that defines and organizes the questions for which answers are being provided.
   /// If a QuestionnaireResponse references a Questionnaire, then the QuestionnaireResponse structure must be consistent with the Questionnaire (i.e. questions must be organized into the same groups, nested questions must still be nested, etc.).
  final String? questionnaire;
   /// The person who answered the questions about the subject.
   /// If not specified, no inference can be made about who provided the data.
  final Reference? source;
   /// The position of the questionnaire response within its overall lifecycle.
   /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String status; // Possible values: 'in-progress', 'completed', 'amended', 'entered-in-error', 'stopped'
   /// The subject of the questions
   /// The subject of the questionnaire response.  This could be a patient, organization, practitioner, device, etc.  This is who/what the answers apply to, but is not necessarily the source of information.
   /// If the Questionnaire declared a subjectType, the resource pointed to by this element must be an instance of one of the listed types.
  final Reference? subject;
  QuestionnaireResponse({
    this.author,
    this.authored,
    this.basedOn,
    super.contained,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.item,
    super.language,
    super.meta,
    super.modifierExtension,
    this.partOf,
    this.questionnaire,
    this.source,
    required this.status,
    this.subject,
    super.text,
  });
  
  @override
  factory QuestionnaireResponse.fromJson(Map<String, dynamic> json) {
    return QuestionnaireResponse(
      author: json['author'] != null ? Reference.fromJson(json['author'] as Map<String, dynamic>) : null,
      authored: json['authored'] as String?,
      basedOn: (json['basedOn'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      encounter: json['encounter'] != null ? Reference.fromJson(json['encounter'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      implicitRules: json['implicitRules'] as String?,
      item: (json['item'] as List<dynamic>?)?.map((e) => QuestionnaireResponseItem.fromJson(e as Map<String, dynamic>)).toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      partOf: (json['partOf'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      questionnaire: json['questionnaire'] as String?,
      source: json['source'] != null ? Reference.fromJson(json['source'] as Map<String, dynamic>) : null,
      status: json['status'] as String,
      subject: json['subject'] != null ? Reference.fromJson(json['subject'] as Map<String, dynamic>) : null,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'author': author?.toJson(),
      'authored': authored,
      'basedOn': basedOn?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'encounter': encounter?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'implicitRules': implicitRules,
      'item': item?.map((e) => e.toJson()).toList(),
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'partOf': partOf?.map((e) => e.toJson()).toList(),
      'questionnaire': questionnaire,
      'source': source?.toJson(),
      'status': status,
      'subject': subject?.toJson(),
      'text': text?.toJson(),
    };
  
  @override
  QuestionnaireResponse copyWith({
    Reference? author,
    String? authored,
    List<Reference>? basedOn,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    List<QuestionnaireResponseItem>? item,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Reference>? partOf,
    String? questionnaire,
    Reference? source,
    String? status,
    Reference? subject,
    Narrative? text,
  }) {
    return QuestionnaireResponse(
      author: author ?? this.author,
      authored: authored ?? this.authored,
      basedOn: basedOn ?? this.basedOn,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      item: item ?? this.item,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      partOf: partOf ?? this.partOf,
      questionnaire: questionnaire ?? this.questionnaire,
      source: source ?? this.source,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}

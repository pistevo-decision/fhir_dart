part of '../fhir_dart.dart';

/// Entity being ascribed responsibility
/// An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking place.
/// Several agents may be associated (i.e. has some responsibility for an activity) with an activity and vice-versa.
/// For example, in cases of actions initiated by one user for other users, or in events that involve more than one user, hardware device, software, or system process. However, only one user may be the initiator/requestor for the event.
class ContractTermAction extends BackboneElement implements FhirResource {
  /// Episode associated with action
  /// Encounter or Episode with primary association to specified term activity.
  final Reference? context;

  /// Pointer to specific item
  /// Id [identifier??] of the clause or question text related to the requester of this action in the referenced form or QuestionnaireResponse.
  final List<String>? contextLinkId;

  /// True if the term prohibits the  action.
  final bool? doNotPerform;

  /// Purpose for the Contract Term Action
  /// Reason or purpose for the action stipulated by this Contract Provision.
  final CodeableConcept intent;

  /// Pointer to specific item
  /// Id [identifier??] of the clause or question text related to this action in the referenced form or QuestionnaireResponse.
  final List<String>? linkId;

  /// Comments about the action
  /// Comments made about the term action made by the requester, performer, subject or other participants.
  final List<Annotation>? note;

  /// When action happens.
  final String? occurrenceDateTime;

  /// When action happens.
  final Period? occurrencePeriod;

  /// When action happens.
  final Timing? occurrenceTiming;

  /// Actor that wil execute (or not) the action
  /// Indicates who or what is being asked to perform (or not perform) the ction.
  final Reference? performer;

  /// Pointer to specific item
  /// Id [identifier??] of the clause or question text related to the reason type or reference of this  action in the referenced form or QuestionnaireResponse.
  final List<String>? performerLinkId;

  /// Competency of the performer
  /// The type of role or competency of an individual desired or required to perform or not perform the action.
  final CodeableConcept? performerRole;

  /// Kind of service performer
  /// The type of individual that is desired or required to perform or not perform the action.
  final List<CodeableConcept>? performerType;

  /// Why action is to be performed
  /// Describes why the action is to be performed or not performed in textual form.
  final List<String>? reason;

  /// Why is action (not) needed?
  /// Rationale for the action to be performed or not performed. Describes why the action is permitted or prohibited.
  final List<CodeableConcept>? reasonCode;

  /// Pointer to specific item
  /// Id [identifier??] of the clause or question text related to the reason type or reference of this  action in the referenced form or QuestionnaireResponse.
  final List<String>? reasonLinkId;

  /// Why is action (not) needed?
  /// Indicates another resource whose existence justifies permitting or not permitting this action.
  final List<Reference>? reasonReference;

  /// Who asked for action
  /// Who or what initiated the action and has responsibility for its activation.
  final List<Reference>? requester;

  /// Pointer to specific item
  /// Id [identifier??] of the clause or question text related to the requester of this action in the referenced form or QuestionnaireResponse.
  final List<String>? requesterLinkId;

  /// Action restriction numbers
  /// Security labels that protects the action.
  final List<int>? securityLabelNumber;

  /// State of the action
  /// Current state of the term action.
  final CodeableConcept status;

  /// Entity of the action.
  final List<ContractTermActionSubject>? subject;

  /// Type or form of the action
  /// Activity or service obligation to be done or not done, performed or not performed, effectuated or not by this Contract term.
  final CodeableConcept type;
  ContractTermAction({
    this.context,
    this.contextLinkId,
    this.doNotPerform,
    super.fhirExtension,
    super.id,
    required this.intent,
    this.linkId,
    super.modifierExtension,
    this.note,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performerLinkId,
    this.performerRole,
    this.performerType,
    this.reason,
    this.reasonCode,
    this.reasonLinkId,
    this.reasonReference,
    this.requester,
    this.requesterLinkId,
    this.securityLabelNumber,
    required this.status,
    this.subject,
    required this.type,
  });

  @override
  factory ContractTermAction.fromJson(Map<String, dynamic> json) {
    return ContractTermAction(
      context: json['context'] != null
          ? Reference.fromJson((json['context'] as Map).cast<String, dynamic>())
          : null,
      contextLinkId: (json['contextLinkId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      doNotPerform: json['doNotPerform'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      intent: CodeableConcept.fromJson(
          (json['intent'] as Map).cast<String, dynamic>()),
      linkId:
          (json['linkId'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              (json['occurrencePeriod'] as Map).cast<String, dynamic>())
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(
              (json['occurrenceTiming'] as Map).cast<String, dynamic>())
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              (json['performer'] as Map).cast<String, dynamic>())
          : null,
      performerLinkId: (json['performerLinkId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      performerRole: json['performerRole'] != null
          ? CodeableConcept.fromJson(
              (json['performerRole'] as Map).cast<String, dynamic>())
          : null,
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reason:
          (json['reason'] as List<dynamic>?)?.map((e) => e as String).toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonLinkId: (json['reasonLinkId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requester: (json['requester'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requesterLinkId: (json['requesterLinkId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      status: CodeableConcept.fromJson(
          (json['status'] as Map).cast<String, dynamic>()),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => ContractTermActionSubject.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'context': context?.toJson(),
        'contextLinkId': contextLinkId?.map((e) => e).toList(),
        'doNotPerform': doNotPerform,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'intent': intent.toJson(),
        'linkId': linkId?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrencePeriod': occurrencePeriod?.toJson(),
        'occurrenceTiming': occurrenceTiming?.toJson(),
        'performer': performer?.toJson(),
        'performerLinkId': performerLinkId?.map((e) => e).toList(),
        'performerRole': performerRole?.toJson(),
        'performerType': performerType?.map((e) => e.toJson()).toList(),
        'reason': reason?.map((e) => e).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonLinkId': reasonLinkId?.map((e) => e).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'requester': requester?.map((e) => e.toJson()).toList(),
        'requesterLinkId': requesterLinkId?.map((e) => e).toList(),
        'securityLabelNumber': securityLabelNumber?.map((e) => e).toList(),
        'status': status.toJson(),
        'subject': subject?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  ContractTermAction copyWith({
    Reference? context,
    List<String>? contextLinkId,
    bool? doNotPerform,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? intent,
    List<String>? linkId,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    Reference? performer,
    List<String>? performerLinkId,
    CodeableConcept? performerRole,
    List<CodeableConcept>? performerType,
    List<String>? reason,
    List<CodeableConcept>? reasonCode,
    List<String>? reasonLinkId,
    List<Reference>? reasonReference,
    List<Reference>? requester,
    List<String>? requesterLinkId,
    List<int>? securityLabelNumber,
    CodeableConcept? status,
    List<ContractTermActionSubject>? subject,
    CodeableConcept? type,
  }) {
    return ContractTermAction(
      context: context ?? this.context,
      contextLinkId: contextLinkId ?? this.contextLinkId,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      intent: intent ?? this.intent,
      linkId: linkId ?? this.linkId,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      performer: performer ?? this.performer,
      performerLinkId: performerLinkId ?? this.performerLinkId,
      performerRole: performerRole ?? this.performerRole,
      performerType: performerType ?? this.performerType,
      reason: reason ?? this.reason,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonLinkId: reasonLinkId ?? this.reasonLinkId,
      reasonReference: reasonReference ?? this.reasonReference,
      requester: requester ?? this.requester,
      requesterLinkId: requesterLinkId ?? this.requesterLinkId,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      type: type ?? this.type,
    );
  }
}

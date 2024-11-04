part of '../fhir_dart.dart';

/// A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS system proposes that the public health agency be notified about a reportable condition.
class CommunicationRequest extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CommunicationRequest';

  /// Resources that pertain to this communication request
  /// Other resources that pertain to this communication request and to which this communication request should be associated.
  /// Don't use CommunicationRequest.about element when a more specific element exists, such as basedOn, reasonReference, or replaces.
  final List<Reference>? about;

  /// When request transitioned to being actionable
  /// For draft requests, indicates the date of initial creation.  For requests with other statuses, indicates the date of activation.
  final String? authoredOn;

  /// Fulfills plan or proposal
  /// A plan or proposal that is fulfilled in whole or in part by this request.
  final List<Reference>? basedOn;

  /// Message category
  /// The type of message to be sent such as alert, notification, reminder, instruction, etc.
  /// There may be multiple axes of categorization and one communication request may serve multiple purposes.
  final List<CodeableConcept>? category;

  /// True if request is prohibiting action
  /// If true indicates that the CommunicationRequest is asking for the specified action to *not* occur.
  /// The attributes provided with the request qualify what is not to be done.
  final bool? doNotPerform;

  /// Encounter created as part of
  /// The Encounter during which this CommunicationRequest was created or to which the creation of this record is tightly associated.
  /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.
  final Reference? encounter;

  /// Composite request this is part of
  /// A shared identifier common to all requests that were authorized more or less simultaneously by a single author, representing the identifier of the requisition, prescription or similar form.
  /// Requests are linked either by a "basedOn" relationship (i.e. one request is fulfilling another) or by having a common requisition.  Requests that are part of the same requisition are generally treated independently from the perspective of changing their state or maintaining them after initial creation.
  final Identifier? groupIdentifier;

  /// Unique identifier
  /// Business identifiers assigned to this communication request by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// A channel of communication
  /// A channel that was used for this communication (e.g. email, fax).
  final List<CodeableConcept>? medium;

  /// Comments made about communication request
  /// Comments made about the request by the requester, sender, recipient, subject or other participants.
  final List<Annotation>? note;

  /// When scheduled
  /// The time when this communication is to occur.
  final String? occurrenceDateTime;

  /// When scheduled
  /// The time when this communication is to occur.
  final Period? occurrencePeriod;

  /// Message payload
  /// Text, attachment(s), or resource(s) to be communicated to the recipient.
  final List<CommunicationRequestPayload>? payload;

  /// Characterizes how quickly the proposed act must be initiated. Includes concepts such as stat, urgent, routine.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// Why is communication needed?
  /// Describes why the request is being made in coded or textual form.
  /// Textual reasons can be captured using reasonCode.text.
  final List<CodeableConcept>? reasonCode;

  /// Why is communication needed?
  /// Indicates another resource whose existence justifies this request.
  final List<Reference>? reasonReference;

  /// Message recipient
  /// The entity (e.g. person, organization, clinical information system, device, group, or care team) which is the intended target of the communication.
  final List<Reference>? recipient;

  /// Request(s) replaced by this request
  /// Completed or terminated request(s) whose function is taken by this new request.
  /// The replacement could be because the initial request was immediately rejected (due to an issue) or because the previous request was completed, but the need for the action described by the request remains ongoing.
  final List<Reference>? replaces;

  /// Who/what is requesting service
  /// The device, individual, or organization who initiated the request and has responsibility for its activation.
  final Reference? requester;

  /// Message sender
  /// The entity (e.g. person, organization, clinical information system, or device) which is to be the source of the communication.
  final Reference? sender;

  /// The status of the proposal or order.
  final String
      status; // Possible values: 'draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown'
  /// Reason for current status
  /// Captures the reason for the current state of the CommunicationRequest.
  /// This is generally only used for "exception" statuses such as "suspended" or "cancelled".  The reason why the CommunicationRequest was created at all is captured in reasonCode, not here.  [distinct reason codes for different statuses can be enforced using invariants if they are universal bindings].
  final CodeableConcept? statusReason;

  /// Focus of message
  /// The patient or group that is the focus of this communication request.
  final Reference? subject;
  CommunicationRequest({
    this.about,
    this.authoredOn,
    this.basedOn,
    this.category,
    super.contained,
    this.doNotPerform,
    this.encounter,
    super.fhirExtension,
    this.groupIdentifier,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.medium,
    super.meta,
    super.modifierExtension,
    this.note,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.payload,
    this.priority,
    this.reasonCode,
    this.reasonReference,
    this.recipient,
    this.replaces,
    this.requester,
    this.sender,
    required this.status,
    this.statusReason,
    this.subject,
    super.text,
  });

  @override
  factory CommunicationRequest.fromJson(Map<String, dynamic> json) {
    return CommunicationRequest(
      about: (json['about'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      authoredOn: json['authoredOn'] as String?,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      doNotPerform: json['doNotPerform'] as bool?,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      medium: (json['medium'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>)
          : null,
      payload: (json['payload'] as List<dynamic>?)
          ?.map((e) =>
              CommunicationRequestPayload.fromJson(e as Map<String, dynamic>))
          .toList(),
      priority: json['priority'] as String?,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      requester: json['requester'] != null
          ? Reference.fromJson(json['requester'] as Map<String, dynamic>)
          : null,
      sender: json['sender'] != null
          ? Reference.fromJson(json['sender'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'about': about?.map((e) => e.toJson()).toList(),
        'authoredOn': authoredOn,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'doNotPerform': doNotPerform,
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'groupIdentifier': groupIdentifier?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'medium': medium?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrencePeriod': occurrencePeriod?.toJson(),
        'payload': payload?.map((e) => e.toJson()).toList(),
        'priority': priority,
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'recipient': recipient?.map((e) => e.toJson()).toList(),
        'replaces': replaces?.map((e) => e.toJson()).toList(),
        'requester': requester?.toJson(),
        'sender': sender?.toJson(),
        'status': status,
        'statusReason': statusReason?.toJson(),
        'subject': subject?.toJson(),
        'text': text?.toJson(),
      };

  @override
  CommunicationRequest copyWith({
    List<Reference>? about,
    String? authoredOn,
    List<Reference>? basedOn,
    List<CodeableConcept>? category,
    List<Resource>? contained,
    bool? doNotPerform,
    Reference? encounter,
    List<Extension>? fhirExtension,
    Identifier? groupIdentifier,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<CodeableConcept>? medium,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    List<CommunicationRequestPayload>? payload,
    String? priority,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? recipient,
    List<Reference>? replaces,
    Reference? requester,
    Reference? sender,
    String? status,
    CodeableConcept? statusReason,
    Reference? subject,
    Narrative? text,
  }) {
    return CommunicationRequest(
      about: about ?? this.about,
      authoredOn: authoredOn ?? this.authoredOn,
      basedOn: basedOn ?? this.basedOn,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      medium: medium ?? this.medium,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      payload: payload ?? this.payload,
      priority: priority ?? this.priority,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      recipient: recipient ?? this.recipient,
      replaces: replaces ?? this.replaces,
      requester: requester ?? this.requester,
      sender: sender ?? this.sender,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}

part of '../fhir_dart.dart';

/// An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health agency that was notified about a reportable condition.
class Communication extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Communication';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Resources that pertain to this communication
  /// Other resources that pertain to this communication and to which this communication should be associated.
  /// Don't use Communication.about element when a more specific element exists, such as basedOn or reasonReference.
  final List<Reference>? about;

  /// Request fulfilled by this communication
  /// An order, proposal or plan fulfilled in whole or in part by this Communication.
  /// This must point to some sort of a 'Request' resource, such as CarePlan, CommunicationRequest, ServiceRequest, MedicationRequest, etc.
  final List<Reference>? basedOn;

  /// Message category
  /// The type of message conveyed such as alert, notification, reminder, instruction, etc.
  /// There may be multiple axes of categorization and one communication may serve multiple purposes.
  final List<CodeableConcept>? category;

  /// Encounter created as part of
  /// The Encounter during which this Communication was created or to which the creation of this record is tightly associated.
  /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.
  final Reference? encounter;

  /// Unique identifier
  /// Business identifiers assigned to this communication by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// Reply to
  /// Prior communication that this communication is in response to.
  final List<Reference>? inResponseTo;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Communication.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Communication.
  /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;

  /// A channel of communication
  /// A channel that was used for this communication (e.g. email, fax).
  final List<CodeableConcept>? medium;

  /// Comments made about the communication
  /// Additional notes or commentary about the communication by the sender, receiver or other interested parties.
  final List<Annotation>? note;

  /// Part of this action.
  final List<Reference>? partOf;

  /// Message payload
  /// Text, attachment(s), or resource(s) that was communicated to the recipient.
  final List<CommunicationPayload>? payload;

  /// Characterizes how quickly the planned or in progress communication must be addressed. Includes concepts such as stat, urgent, routine.
  /// Used to prioritize workflow (such as which communication to read first) when the communication is planned or in progress.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// Indication for message
  /// The reason or justification for the communication.
  /// Textual reasons can be captured using reasonCode.text.
  final List<CodeableConcept>? reasonCode;

  /// Why was communication done?
  /// Indicates another resource whose existence justifies this communication.
  final List<Reference>? reasonReference;

  /// When received
  /// The time when this communication arrived at the destination.
  final String? received;

  /// Message recipient
  /// The entity (e.g. person, organization, clinical information system, care team or device) which was the target of the communication. If receipts need to be tracked by an individual, a separate resource instance will need to be created for each recipient.  Multiple recipient communications are intended where either receipts are not tracked (e.g. a mass mail-out) or a receipt is captured in aggregate (all emails confirmed received by a particular time).
  final List<Reference>? recipient;

  /// Message sender
  /// The entity (e.g. person, organization, clinical information system, or device) which was the source of the communication.
  final Reference? sender;

  /// When sent
  /// The time when this communication was sent.
  final String? sent;

  /// The status of the transmission.
  /// This element is labeled as a modifier because the status contains the codes aborted and entered-in-error that mark the communication as not currently valid.
  final String
      status; // Possible values: 'preparation', 'in-progress', 'not-done', 'on-hold', 'stopped', 'completed', 'entered-in-error', 'unknown'
  /// Reason for current status
  /// Captures the reason for the current state of the Communication.
  /// This is generally only used for "exception" statuses such as "not-done", "suspended" or "aborted". The reason for performing the event at all is captured in reasonCode, not here.
  final CodeableConcept? statusReason;

  /// Focus of message
  /// The patient or group that was the focus of this communication.
  final Reference? subject;

  /// Description of the purpose/content, similar to a subject line in an email.
  /// Communication.topic.text can be used without any codings.
  final CodeableConcept? topic;
  Communication({
    this.about,
    this.basedOn,
    this.category,
    super.contained,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.inResponseTo,
    this.instantiatesCanonical,
    this.instantiatesUri,
    super.language,
    this.medium,
    super.meta,
    super.modifierExtension,
    this.note,
    this.partOf,
    this.payload,
    this.priority,
    this.reasonCode,
    this.reasonReference,
    this.received,
    this.recipient,
    this.sender,
    this.sent,
    required this.status,
    this.statusReason,
    this.subject,
    super.text,
    this.topic,
  });

  @override
  factory Communication.fromJson(Map<String, dynamic> json) {
    return Communication(
      about: (json['about'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      inResponseTo: (json['inResponseTo'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String?,
      medium: (json['medium'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      payload: (json['payload'] as List<dynamic>?)
          ?.map((e) =>
              CommunicationPayload.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      priority: json['priority'] as String?,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      received: json['received'] as String?,
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      sender: json['sender'] != null
          ? Reference.fromJson((json['sender'] as Map).cast<String, dynamic>())
          : null,
      sent: json['sent'] as String?,
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              (json['statusReason'] as Map).cast<String, dynamic>())
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      topic: json['topic'] != null
          ? CodeableConcept.fromJson(
              (json['topic'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'about': about?.map((e) => e.toJson()).toList(),
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'inResponseTo': inResponseTo?.map((e) => e.toJson()).toList(),
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'language': language,
        'medium': medium?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'payload': payload?.map((e) => e.toJson()).toList(),
        'priority': priority,
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'received': received,
        'recipient': recipient?.map((e) => e.toJson()).toList(),
        'sender': sender?.toJson(),
        'sent': sent,
        'status': status,
        'statusReason': statusReason?.toJson(),
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'topic': topic?.toJson(),
      };

  @override
  Communication copyWith({
    List<Reference>? about,
    List<Reference>? basedOn,
    List<CodeableConcept>? category,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<Reference>? inResponseTo,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    String? language,
    List<CodeableConcept>? medium,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<Reference>? partOf,
    List<CommunicationPayload>? payload,
    String? priority,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    String? received,
    List<Reference>? recipient,
    Reference? sender,
    String? sent,
    String? status,
    CodeableConcept? statusReason,
    Reference? subject,
    Narrative? text,
    CodeableConcept? topic,
  }) {
    return Communication(
      about: about ?? this.about,
      basedOn: basedOn ?? this.basedOn,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      inResponseTo: inResponseTo ?? this.inResponseTo,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      language: language ?? this.language,
      medium: medium ?? this.medium,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      partOf: partOf ?? this.partOf,
      payload: payload ?? this.payload,
      priority: priority ?? this.priority,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      received: received ?? this.received,
      recipient: recipient ?? this.recipient,
      sender: sender ?? this.sender,
      sent: sent ?? this.sent,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      topic: topic ?? this.topic,
    );
  }
}

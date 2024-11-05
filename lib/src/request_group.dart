part of '../fhir_dart.dart';

/// A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
class RequestGroup extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'RequestGroup';

  /// Proposed actions, if any
  /// The actions, if any, produced by the evaluation of the artifact.
  final List<RequestGroupAction>? action;

  /// Device or practitioner that authored the request group
  /// Provides a reference to the author of the request group.
  final Reference? author;

  /// When the request group was authored
  /// Indicates when the request group was created.
  final String? authoredOn;

  /// Fulfills plan, proposal, or order
  /// A plan, proposal or order that is fulfilled in whole or in part by this request.
  final List<Reference>? basedOn;

  /// What's being requested/ordered
  /// A code that identifies what the overall request group is.
  /// This element can be used to provide a code that captures the meaning of the request group as a whole, as opposed to the code of the action element, which captures the meaning of the individual actions within the request group.
  final CodeableConcept? code;

  /// Created as part of
  /// Describes the context of the request group, if any.
  final Reference? encounter;

  /// Composite request this is part of
  /// A shared identifier common to all requests that were authorized more or less simultaneously by a single author, representing the identifier of the requisition, prescription or similar form.
  /// Requests are linked either by a "basedOn" relationship (i.e. one request is fulfilling another) or by having a common requisition.  Requests that are part of the same requisition are generally treated independently from the perspective of changing their state or maintaining them after initial creation.
  final Identifier? groupIdentifier;

  /// Business identifier
  /// Allows a service to provide a unique, business identifier for the request.
  final List<Identifier>? identifier;

  /// Instantiates FHIR protocol or definition
  /// A canonical URL referencing a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this request.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// A URL referencing an externally defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this request.
  final List<String>? instantiatesUri;

  /// Indicates the level of authority/intentionality associated with the request and where the request fits into the workflow chain.
  final String
      intent; // Possible values: 'proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option'
  /// Additional notes about the response
  /// Provides a mechanism to communicate additional information about the response.
  final List<Annotation>? note;

  /// Indicates how quickly the request should be addressed with respect to other requests.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// Why the request group is needed
  /// Describes the reason for the request group in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// Why the request group is needed
  /// Indicates another resource whose existence justifies this request group.
  final List<Reference>? reasonReference;

  /// Request(s) replaced by this request
  /// Completed or terminated request(s) whose function is taken by this new request.
  /// The replacement could be because the initial request was immediately rejected (due to an issue) or because the previous request was completed, but the need for the action described by the request remains ongoing.
  final List<Reference>? replaces;

  /// The current state of the request. For request groups, the status reflects the status of all the requests in the group.
  final String
      status; // Possible values: 'draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown'
  /// Who the request group is about
  /// The subject for which the request group was created.
  final Reference? subject;
  RequestGroup({
    this.action,
    this.author,
    this.authoredOn,
    this.basedOn,
    this.code,
    super.contained,
    this.encounter,
    super.fhirExtension,
    this.groupIdentifier,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiatesCanonical,
    this.instantiatesUri,
    required this.intent,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.priority,
    this.reasonCode,
    this.reasonReference,
    this.replaces,
    required this.status,
    this.subject,
    super.text,
  });

  @override
  factory RequestGroup.fromJson(Map<String, dynamic> json) {
    return RequestGroup(
      action: (json['action'] as List<dynamic>?)
          ?.map((e) =>
              RequestGroupAction.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      author: json['author'] != null
          ? Reference.fromJson((json['author'] as Map).cast<String, dynamic>())
          : null,
      authoredOn: json['authoredOn'] as String?,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
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
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              (json['groupIdentifier'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      intent: json['intent'] as String,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      priority: json['priority'] as String?,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action?.map((e) => e.toJson()).toList(),
        'author': author?.toJson(),
        'authoredOn': authoredOn,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'groupIdentifier': groupIdentifier?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'intent': intent,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'priority': priority,
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'replaces': replaces?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
      };

  @override
  RequestGroup copyWith({
    List<RequestGroupAction>? action,
    Reference? author,
    String? authoredOn,
    List<Reference>? basedOn,
    CodeableConcept? code,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    Identifier? groupIdentifier,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    String? intent,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? priority,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? replaces,
    String? status,
    Reference? subject,
    Narrative? text,
  }) {
    return RequestGroup(
      action: action ?? this.action,
      author: author ?? this.author,
      authoredOn: authoredOn ?? this.authoredOn,
      basedOn: basedOn ?? this.basedOn,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      intent: intent ?? this.intent,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      priority: priority ?? this.priority,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      replaces: replaces ?? this.replaces,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}

part of '../fhir_dart.dart';

 /// The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle.
 /// Many implementations are not prepared to use REST and need a messaging based infrastructure.
class MessageHeader extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'MessageHeader';
   /// The source of the decision
   /// The logical author of the message - the person or device that decided the described event should happen. When there is more than one candidate, pick the most proximal to the MessageHeader. Can provide other authors in extensions.
   /// Usually only for the request but can be used in a response.
  final Reference? author;
   /// Link to the definition for this message
   /// Permanent link to the MessageDefinition for this message.
  final String? definition;
   /// Message destination application(s)
   /// The destination application which the message is intended for.
   /// There SHOULD be at least one destination, but in some circumstances, the source system is unaware of any particular destination system.
  final List<MessageHeaderDestination>? destination;
   /// The source of the data entry
   /// The person or device that performed the data entry leading to this message. When there is more than one candidate, pick the most proximal to the message. Can provide other enterers in extensions.
   /// Usually only for the request but can be used in a response.
  final Reference? enterer;
   /// Code for the event this message represents or link to event definition
   /// Code that identifies the event this message represents and connects it with its definition. Events defined as part of the FHIR specification have the system value "http://terminology.hl7.org/CodeSystem/message-events".  Alternatively uri to the EventDefinition.
   /// The time of the event will be found in the focus resource. The time of the message will be found in [Bundle.timestamp](bundle-definitions.html#Bundle.timestamp).
  final Coding? eventCoding;
   /// Code for the event this message represents or link to event definition
   /// Code that identifies the event this message represents and connects it with its definition. Events defined as part of the FHIR specification have the system value "http://terminology.hl7.org/CodeSystem/message-events".  Alternatively uri to the EventDefinition.
   /// The time of the event will be found in the focus resource. The time of the message will be found in [Bundle.timestamp](bundle-definitions.html#Bundle.timestamp).
  final String? eventUri;
   /// The actual content of the message
   /// The actual data of the message - a reference to the root/focus class of the event.
   /// The data is defined where the transaction type is defined. The transaction data is always included in the bundle that is the full message.  Only the root resource is specified.  The resources it references should be contained in the bundle but are not also listed here.  Multiple repetitions are allowed to cater for merges and other situations with multiple focal targets.
  final List<Reference>? focus;
   /// Cause of event
   /// Coded indication of the cause for the event - indicates  a reason for the occurrence of the event that is a focus of this message.
  final CodeableConcept? reason;
   /// If this is a reply to prior message
   /// Information about the message that this message is a response to.  Only present if this message is a response.
  final MessageHeaderResponse? response;
   /// Final responsibility for event
   /// The person or organization that accepts overall responsibility for the contents of the message. The implication is that the message event happened under the policies of the responsible party.
   /// Usually only for the request but can be used in a response.
  final Reference? responsible;
   /// Real world sender of the message
   /// Identifies the sending system to allow the use of a trust relationship.
   /// Use case is for where a (trusted) sending system is responsible for multiple organizations, and therefore cannot differentiate based on source endpoint / authentication alone.
  final Reference? sender;
   /// Message source application
   /// The source application from which this message originated.
  final MessageHeaderSource source;
  MessageHeader({
    this.author,
    super.contained,
    this.definition,
    this.destination,
    this.enterer,
    this.eventCoding,
    this.eventUri,
    super.fhirExtension,
    this.focus,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.reason,
    this.response,
    this.responsible,
    this.sender,
    required this.source,
    super.text,
  });
  
  @override
  factory MessageHeader.fromJson(Map<String, dynamic> json) {
    return MessageHeader(
      author: json['author'] != null ? Reference.fromJson(json['author'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      definition: json['definition'] as String?,
      destination: (json['destination'] as List<dynamic>?)?.map((e) => MessageHeaderDestination.fromJson(e as Map<String, dynamic>)).toList(),
      enterer: json['enterer'] != null ? Reference.fromJson(json['enterer'] as Map<String, dynamic>) : null,
      eventCoding: json['eventCoding'] != null ? Coding.fromJson(json['eventCoding'] as Map<String, dynamic>) : null,
      eventUri: json['eventUri'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      focus: (json['focus'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      reason: json['reason'] != null ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>) : null,
      response: json['response'] != null ? MessageHeaderResponse.fromJson(json['response'] as Map<String, dynamic>) : null,
      responsible: json['responsible'] != null ? Reference.fromJson(json['responsible'] as Map<String, dynamic>) : null,
      sender: json['sender'] != null ? Reference.fromJson(json['sender'] as Map<String, dynamic>) : null,
      source: MessageHeaderSource.fromJson(json['source'] as Map<String, dynamic>),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'author': author?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'definition': definition,
      'destination': destination?.map((e) => e.toJson()).toList(),
      'enterer': enterer?.toJson(),
      'eventCoding': eventCoding?.toJson(),
      'eventUri': eventUri,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'focus': focus?.map((e) => e.toJson()).toList(),
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'reason': reason?.toJson(),
      'response': response?.toJson(),
      'responsible': responsible?.toJson(),
      'sender': sender?.toJson(),
      'source': source.toJson(),
      'text': text?.toJson(),
    };
  
  @override
  MessageHeader copyWith({
    Reference? author,
    List<Resource>? contained,
    String? definition,
    List<MessageHeaderDestination>? destination,
    Reference? enterer,
    Coding? eventCoding,
    String? eventUri,
    List<Extension>? fhirExtension,
    List<Reference>? focus,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    CodeableConcept? reason,
    MessageHeaderResponse? response,
    Reference? responsible,
    Reference? sender,
    MessageHeaderSource? source,
    Narrative? text,
  }) {
    return MessageHeader(
      author: author ?? this.author,
      contained: contained ?? this.contained,
      definition: definition ?? this.definition,
      destination: destination ?? this.destination,
      enterer: enterer ?? this.enterer,
      eventCoding: eventCoding ?? this.eventCoding,
      eventUri: eventUri ?? this.eventUri,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focus: focus ?? this.focus,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reason: reason ?? this.reason,
      response: response ?? this.response,
      responsible: responsible ?? this.responsible,
      sender: sender ?? this.sender,
      source: source ?? this.source,
      text: text ?? this.text,
    );
  }
}

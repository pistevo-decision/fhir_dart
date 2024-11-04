part of '../fhir_dart.dart';

 /// This would be a MIF-level artifact.
 /// Defines the characteristics of a message that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s), if any, are permitted.
 /// Allows messages to be defined once and re-used across systems.
class MessageDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'MessageDefinition';
   /// Responses to this message
   /// Indicates what types of messages may be sent as an application-level response to this message.
   /// This indicates an application level response to "close" a transaction implicit in a particular request message.  To define a complete workflow scenario, look to the [[PlanDefinition]] resource which allows the definition of complex orchestrations, conditionality, etc.
  final List<MessageDefinitionAllowedResponse>? allowedResponse;
   /// Definition this one is based on
   /// The MessageDefinition that is the basis for the contents of this resource.
  final String? base;
   /// The impact of the content of the message.
  final String? category; // Possible values: 'consequence', 'currency', 'notification'
   /// Contact details for the publisher
   /// Contact details to assist a user in finding and communicating with the publisher.
   /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;
   /// Use and/or publishing restrictions
   /// A copyright statement relating to the message definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the message definition.
  final String? copyright;
   /// Date last changed
   /// The date  (and optionally time) when the message definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the message definition changes.
   /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the message definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String date;
   /// Natural language description of the message definition
   /// A free text natural language description of the message definition from a consumer's perspective.
   /// This description can be used to capture details such as why the message definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the message definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the message definition is presumed to be the predominant language in the place the message definition was created).
  final String? description;
   /// Event code  or link to the EventDefinition
   /// Event code or link to the EventDefinition.
  final Coding? eventCoding;
   /// Event code  or link to the EventDefinition
   /// Event code or link to the EventDefinition.
  final String? eventUri;
   /// For testing purposes, not real usage
   /// A Boolean value to indicate that this message definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
   /// Allows filtering of message definitions that are appropriate for use versus not.
  final bool? experimental;
   /// Resource(s) that are the subject of the event
   /// Identifies the resource (or resources) that are being addressed by the event.  For example, the Encounter for an admit message or two Account records for a merge.
  final List<MessageDefinitionFocus>? focus;
   /// Canonical reference to a GraphDefinition. If a URL is provided, it is the canonical reference to a [GraphDefinition](graphdefinition.html) that it controls what resources are to be added to the bundle when building the document. The GraphDefinition can also specify profiles that apply to the various resources.
  final List<String>? graph;
   /// Primary key for the message definition on a given server
   /// A formal identifier that is used to identify this message definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
   /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this message definition outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;
   /// Intended jurisdiction for message definition (if applicable)
   /// A legal or geographic region in which the message definition is intended to be used.
   /// It may be possible for the message definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;
   /// Name for this message definition (computer friendly)
   /// A natural language name identifying the message definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
   /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;
   /// Protocol/workflow this is part of
   /// Identifies a protocol or workflow that this MessageDefinition represents a step in.
   /// It should be possible to use MessageDefinition to describe a message to be used by certain steps in a particular protocol as part of a PlanDefinition or ActivityDefinition.
  final List<String>? parent;
   /// Name of the publisher (organization or individual)
   /// The name of the organization or individual that published the message definition.
   /// Usually an organization but may be an individual. The publisher (or steward) of the message definition is the organization or individual primarily responsible for the maintenance and upkeep of the message definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the message definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;
   /// Why this message definition is defined
   /// Explanation of why this message definition is needed and why it has been designed as it has.
   /// This element does not describe the usage of the message definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this message definition.
  final String? purpose;
   /// Takes the place of
   /// A MessageDefinition that is superseded by this definition.
  final List<String>? replaces;
   /// Declare at a message definition level whether a response is required or only upon error or success, or never.
   /// This enables the capability currently available through MSH-16 (Application Level acknowledgement) in HL7 Version 2 to declare at a message instance level whether a response is required or only upon error or success, or never.
  final String? responseRequired; // Possible values: 'always', 'on-error', 'never', 'on-success'
   /// The status of this message definition. Enables tracking the life-cycle of the content.
   /// Allows filtering of message definitions that are appropriate for use versus not.
  final String status; // Possible values: 'draft', 'active', 'retired', 'unknown'
   /// Name for this message definition (human friendly)
   /// A short, descriptive, user-friendly title for the message definition.
   /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;
   /// Business Identifier for a given MessageDefinition
   /// The business identifier that is used to reference the MessageDefinition and *is* expected to be consistent from server to server.
   /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
   /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions). 
   /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;
   /// The context that the content is intended to support
   /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate message definition instances.
   /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;
   /// Business version of the message definition
   /// The identifier that is used to identify this version of the message definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the message definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
   /// There may be different message definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the message definition with the format [url]|[version].
  final String? version;
  MessageDefinition({
    this.allowedResponse,
    this.base,
    this.category,
    this.contact,
    super.contained,
    this.copyright,
    required this.date,
    this.description,
    this.eventCoding,
    this.eventUri,
    this.experimental,
    super.fhirExtension,
    this.focus,
    this.graph,
    super.id,
    this.identifier,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.parent,
    this.publisher,
    this.purpose,
    this.replaces,
    this.responseRequired,
    required this.status,
    super.text,
    this.title,
    this.url,
    this.useContext,
    this.version,
  });
  
  @override
  factory MessageDefinition.fromJson(Map<String, dynamic> json) {
    return MessageDefinition(
      allowedResponse: (json['allowedResponse'] as List<dynamic>?)?.map((e) => MessageDefinitionAllowedResponse.fromJson(e as Map<String, dynamic>)).toList(),
      base: json['base'] as String?,
      category: json['category'] as String?,
      contact: (json['contact'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String,
      description: json['description'] as String?,
      eventCoding: json['eventCoding'] != null ? Coding.fromJson(json['eventCoding'] as Map<String, dynamic>) : null,
      eventUri: json['eventUri'] as String?,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      focus: (json['focus'] as List<dynamic>?)?.map((e) => MessageDefinitionFocus.fromJson(e as Map<String, dynamic>)).toList(),
      graph: (json['graph'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
      parent: (json['parent'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      replaces: (json['replaces'] as List<dynamic>?)?.map((e) => e as String).toList(),
      responseRequired: json['responseRequired'] as String?,
      status: json['status'] as String,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      title: json['title'] as String?,
      url: json['url'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>)).toList(),
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'allowedResponse': allowedResponse?.map((e) => e.toJson()).toList(),
      'base': base,
      'category': category,
      'contact': contact?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'copyright': copyright,
      'date': date,
      'description': description,
      'eventCoding': eventCoding?.toJson(),
      'eventUri': eventUri,
      'experimental': experimental,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'focus': focus?.map((e) => e.toJson()).toList(),
      'graph': graph?.map((e) => e).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'parent': parent?.map((e) => e).toList(),
      'publisher': publisher,
      'purpose': purpose,
      'replaces': replaces?.map((e) => e).toList(),
      'responseRequired': responseRequired,
      'status': status,
      'text': text?.toJson(),
      'title': title,
      'url': url,
      'useContext': useContext?.map((e) => e.toJson()).toList(),
      'version': version,
    };
  
  @override
  MessageDefinition copyWith({
    List<MessageDefinitionAllowedResponse>? allowedResponse,
    String? base,
    String? category,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    Coding? eventCoding,
    String? eventUri,
    bool? experimental,
    List<Extension>? fhirExtension,
    List<MessageDefinitionFocus>? focus,
    List<String>? graph,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<String>? parent,
    String? publisher,
    String? purpose,
    List<String>? replaces,
    String? responseRequired,
    String? status,
    Narrative? text,
    String? title,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return MessageDefinition(
      allowedResponse: allowedResponse ?? this.allowedResponse,
      base: base ?? this.base,
      category: category ?? this.category,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      eventCoding: eventCoding ?? this.eventCoding,
      eventUri: eventUri ?? this.eventUri,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focus: focus ?? this.focus,
      graph: graph ?? this.graph,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      parent: parent ?? this.parent,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      replaces: replaces ?? this.replaces,
      responseRequired: responseRequired ?? this.responseRequired,
      status: status ?? this.status,
      text: text ?? this.text,
      title: title ?? this.title,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

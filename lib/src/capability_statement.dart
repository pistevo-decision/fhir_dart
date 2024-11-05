part of '../fhir_dart.dart';

/// Applications may implement multiple versions (see [Managing Multiple Versions](versioning.html), and the [$versions](capabilitystatement-operation-versions.html) operation). If they do, then a CapabilityStatement describes the system's support for a particular version of FHIR, and the server will have multiple statements, one for each version.
/// A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
class CapabilityStatement extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CapabilityStatement';

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the capability statement and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the capability statement.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the capability statement was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the capability statement changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the capability statement. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String date;

  /// Natural language description of the capability statement
  /// A free text natural language description of the capability statement from a consumer's perspective. Typically, this is used when the capability statement describes a desired rather than an actual solution, for example as a formal expression of requirements as part of an RFP.
  /// This description can be used to capture details such as why the capability statement was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the capability statement as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the capability statement is presumed to be the predominant language in the place the capability statement was created).This does not need to be populated if the description is adequately implied by the software or implementation details.
  final String? description;

  /// Document definition
  /// A document definition.
  final List<CapabilityStatementDocument>? document;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this capability statement is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of capability statements that are appropriate for use versus not.
  final bool? experimental;

  /// FHIR Version the system supports
  /// The version of the FHIR specification that this CapabilityStatement describes (which SHALL be the same as the FHIR version of the CapabilityStatement itself). There is no default value.
  /// Servers may implement multiple versions (see [Managing Multiple Versions](versioning.html), and the [$versions](capabilitystatement-operation-versions.html) operation). If they do, and the CapabilityStatement is requested from the server, then this fhirVersion will be either the version requested, or the server's default version.
  final String
      fhirVersion; // Possible values: '0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1'
  /// A list of the formats supported by this implementation using their content types.
  /// "xml", "json" and "ttl" are allowed, which describe the simple encodings described in the specification (and imply appropriate bundle support). Otherwise, mime types are legal here.
  final List<String> format;

  /// If this describes a specific instance
  /// Identifies a specific implementation instance that is described by the capability statement - i.e. a particular installation, rather than the capabilities of a software program.
  final CapabilityStatementImplementation? implementation;

  /// Implementation guides supported
  /// A list of implementation guides that the server does (or should) support in their entirety.
  final List<String>? implementationGuide;

  /// Canonical URL of another capability statement this adds to
  /// Reference to a canonical URL of another CapabilityStatement that this software adds to. The capability statement automatically includes everything in the other statement, and it is not duplicated, though the server may repeat the same resources, interactions and operations to add additional details to them.
  /// the contents of any directly or indirectly imported CapabilityStatements SHALL NOT overlap, i.e. they cannot refer to the same rest/resource, operations/name, searchparam/name, interaction/code, messaging/endpoint, document/mode pair.
  /// A capability statement that imports another CapabilityStatement automatically instantiates it too (though this is often not a very useful statement for the kinds of CapabilityStatements that are suitable for importing).
  final List<String>? imports;

  /// Canonical URL of another capability statement this implements
  /// Reference to a canonical URL of another CapabilityStatement that this software implements. This capability statement is a published API description that corresponds to a business service. The server may actually implement a subset of the capability statement it claims to implement, so the capability statement must specify the full capability details.
  /// HL7 defines the following Services: [Terminology Service](terminology-service.html).
  /// Many [Implementation Guides](http://fhir.org/guides/registry) define additional services.
  final List<String>? instantiates;

  /// Intended jurisdiction for capability statement (if applicable)
  /// A legal or geographic region in which the capability statement is intended to be used.
  /// It may be possible for the capability statement to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// The way that this statement is intended to be used, to describe an actual running instance of software, a particular product (kind, not instance of software) or a class of implementation (e.g. a desired purchase).
  final String
      kind; // Possible values: 'instance', 'capability', 'requirements'
  /// If messaging is supported
  /// A description of the messaging capabilities of the solution.
  /// Multiple repetitions allow the documentation of multiple endpoints per solution.
  final List<CapabilityStatementMessaging>? messaging;

  /// Name for this capability statement (computer friendly)
  /// A natural language name identifying the capability statement. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Patch formats supported
  /// A list of the patch formats supported by this implementation using their content types.
  /// At present, the patch mime types application/json-patch+json and application/xml-patch+xml are legal. Generally, if a server supports PATCH, it would be expected to support the patch formats and match the formats it supports, but this is not always possible or necessary.
  final List<String>? patchFormat;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the capability statement.
  /// Usually an organization but may be an individual. The publisher (or steward) of the capability statement is the organization or individual primarily responsible for the maintenance and upkeep of the capability statement. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the capability statement. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this capability statement is defined
  /// Explanation of why this capability statement is needed and why it has been designed as it has.
  /// This element does not describe the usage of the capability statement. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this capability statement.
  final String? purpose;

  /// If the endpoint is a RESTful one
  /// A definition of the restful capabilities of the solution, if any.
  /// Multiple repetitions allow definition of both client and/or server behaviors or possibly behaviors under different configuration settings (for software or requirements statements).
  final List<CapabilityStatementRest>? rest;

  /// Software that is covered by this capability statement.  It is used when the capability statement describes the capabilities of a particular software version, independent of an installation.
  final CapabilityStatementSoftware? software;

  /// The status of this capability statement. Enables tracking the life-cycle of the content.
  /// Allows filtering of capability statements that are appropriate for use versus not.This is not intended for use with actual capability statements, but where capability statements are used to describe possible or desired systems.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Name for this capability statement (human friendly)
  /// A short, descriptive, user-friendly title for the capability statement.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// Canonical identifier for this capability statement, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this capability statement when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this capability statement is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the capability statement is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate capability statement instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the capability statement
  /// The identifier that is used to identify this version of the capability statement when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the capability statement author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different capability statement instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the capability statement with the format [url]|[version].
  final String? version;
  CapabilityStatement({
    this.contact,
    super.contained,
    this.copyright,
    required this.date,
    this.description,
    this.document,
    this.experimental,
    super.fhirExtension,
    required this.fhirVersion,
    required this.format,
    super.id,
    this.implementation,
    this.implementationGuide,
    super.implicitRules,
    this.imports,
    this.instantiates,
    this.jurisdiction,
    required this.kind,
    super.language,
    this.messaging,
    super.meta,
    super.modifierExtension,
    this.name,
    this.patchFormat,
    this.publisher,
    this.purpose,
    this.rest,
    this.software,
    required this.status,
    super.text,
    this.title,
    this.url,
    this.useContext,
    this.version,
  });

  @override
  factory CapabilityStatement.fromJson(Map<String, dynamic> json) {
    return CapabilityStatement(
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String,
      description: json['description'] as String?,
      document: (json['document'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementDocument.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirVersion: json['fhirVersion'] as String,
      format:
          (json['format'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as String?,
      implementation: json['implementation'] != null
          ? CapabilityStatementImplementation.fromJson(
              (json['implementation'] as Map).cast<String, dynamic>())
          : null,
      implementationGuide: (json['implementationGuide'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      imports:
          (json['imports'] as List<dynamic>?)?.map((e) => e as String).toList(),
      instantiates: (json['instantiates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      kind: json['kind'] as String,
      language: json['language'] as String?,
      messaging: (json['messaging'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementMessaging.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      patchFormat: (json['patchFormat'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      rest: (json['rest'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRest.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      software: json['software'] != null
          ? CapabilityStatementSoftware.fromJson(
              (json['software'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
      url: json['url'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map(
              (e) => UsageContext.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'date': date,
        'description': description,
        'document': document?.map((e) => e.toJson()).toList(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fhirVersion': fhirVersion,
        'format': format.map((e) => e).toList(),
        'id': id,
        'implementation': implementation?.toJson(),
        'implementationGuide': implementationGuide?.map((e) => e).toList(),
        'implicitRules': implicitRules,
        'imports': imports?.map((e) => e).toList(),
        'instantiates': instantiates?.map((e) => e).toList(),
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'kind': kind,
        'language': language,
        'messaging': messaging?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'patchFormat': patchFormat?.map((e) => e).toList(),
        'publisher': publisher,
        'purpose': purpose,
        'rest': rest?.map((e) => e.toJson()).toList(),
        'software': software?.toJson(),
        'status': status,
        'text': text?.toJson(),
        'title': title,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  CapabilityStatement copyWith({
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    List<CapabilityStatementDocument>? document,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? fhirVersion,
    List<String>? format,
    String? id,
    CapabilityStatementImplementation? implementation,
    List<String>? implementationGuide,
    String? implicitRules,
    List<String>? imports,
    List<String>? instantiates,
    List<CodeableConcept>? jurisdiction,
    String? kind,
    String? language,
    List<CapabilityStatementMessaging>? messaging,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<String>? patchFormat,
    String? publisher,
    String? purpose,
    List<CapabilityStatementRest>? rest,
    CapabilityStatementSoftware? software,
    String? status,
    Narrative? text,
    String? title,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return CapabilityStatement(
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      document: document ?? this.document,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      format: format ?? this.format,
      id: id ?? this.id,
      implementation: implementation ?? this.implementation,
      implementationGuide: implementationGuide ?? this.implementationGuide,
      implicitRules: implicitRules ?? this.implicitRules,
      imports: imports ?? this.imports,
      instantiates: instantiates ?? this.instantiates,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      kind: kind ?? this.kind,
      language: language ?? this.language,
      messaging: messaging ?? this.messaging,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      patchFormat: patchFormat ?? this.patchFormat,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      rest: rest ?? this.rest,
      software: software ?? this.software,
      status: status ?? this.status,
      text: text ?? this.text,
      title: title ?? this.title,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

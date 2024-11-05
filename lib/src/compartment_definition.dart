part of '../fhir_dart.dart';

/// In FHIR, search is not performed directly on a resource (by XML or JSON path), but on a named parameter that maps into the resource content.
/// A compartment definition that defines how resources are accessed on a server.
class CompartmentDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CompartmentDefinition';

  /// Which compartment this definition describes.
  /// Only the specification can define the compartments that can exist. Servers can choose to support them.
  final String
      code; // Possible values: 'Patient', 'Encounter', 'RelatedPerson', 'Practitioner', 'Device'
  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Date last changed
  /// The date  (and optionally time) when the compartment definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the compartment definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the compartment definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the compartment definition
  /// A free text natural language description of the compartment definition from a consumer's perspective.
  /// This description can be used to capture details such as why the compartment definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the compartment definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the compartment definition is presumed to be the predominant language in the place the compartment definition was created).
  final String? description;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this compartment definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of compartment definitions that are appropriate for use versus not.
  final bool? experimental;

  /// Name for this compartment definition (computer friendly)
  /// A natural language name identifying the compartment definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.This is often the same as the code for the parameter, but does not need to be.
  final String name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the compartment definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the compartment definition is the organization or individual primarily responsible for the maintenance and upkeep of the compartment definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the compartment definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this compartment definition is defined
  /// Explanation of why this compartment definition is needed and why it has been designed as it has.
  /// This element does not describe the usage of the compartment definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this compartment definition.
  final String? purpose;

  /// How a resource is related to the compartment
  /// Information about how a resource is related to the compartment.
  final List<CompartmentDefinitionResource>? resource;

  /// Whether the search syntax is supported,.
  /// Servers may define and use compartments to manage logical access without implementing the compartment related syntax.
  final bool search;

  /// The status of this compartment definition. Enables tracking the life-cycle of the content.
  /// Allows filtering of compartment definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Canonical identifier for this compartment definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this compartment definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this compartment definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the compartment definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate compartment definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the compartment definition
  /// The identifier that is used to identify this version of the compartment definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the compartment definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different compartment definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the compartment definition with the format [url]|[version].
  final String? version;
  CompartmentDefinition({
    required this.code,
    this.contact,
    super.contained,
    this.date,
    this.description,
    this.experimental,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.name,
    this.publisher,
    this.purpose,
    this.resource,
    required this.search,
    required this.status,
    super.text,
    required this.url,
    this.useContext,
    this.version,
  });

  @override
  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) {
    return CompartmentDefinition(
      code: json['code'] as String,
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String?,
      description: json['description'] as String?,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) => CompartmentDefinitionResource.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      search: json['search'] as bool,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      url: json['url'] as String,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map(
              (e) => UsageContext.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'description': description,
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'resource': resource?.map((e) => e.toJson()).toList(),
        'search': search,
        'status': status,
        'text': text?.toJson(),
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  CompartmentDefinition copyWith({
    String? code,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? date,
    String? description,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? purpose,
    List<CompartmentDefinitionResource>? resource,
    bool? search,
    String? status,
    Narrative? text,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return CompartmentDefinition(
      code: code ?? this.code,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      description: description ?? this.description,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      resource: resource ?? this.resource,
      search: search ?? this.search,
      status: status ?? this.status,
      text: text ?? this.text,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

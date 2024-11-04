part of '../fhir_dart.dart';

/// A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
class ValueSet extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'ValueSet';

  /// Content logical definition of the value set (CLD)
  /// A set of criteria that define the contents of the value set by including or excluding codes selected from the specified code system(s) that the value set draws from. This is also known as the Content Logical Definition (CLD).
  final ValueSetCompose? compose;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the value set and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the value set.
  /// nullFrequently, the copyright differs between the value set and the codes that are included. The copyright statement should clearly differentiate between these when required.
  final String? copyright;

  /// Date last changed
  /// The date (and optionally time) when the value set was created or revised (e.g. the 'content logical definition').
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the value set. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the value set
  /// A free text natural language description of the value set from a consumer's perspective. The textual description specifies the span of meanings for concepts to be included within the Value Set Expansion, and also may specify the intended use and limitations of the Value Set.
  /// This description can be used to capture details such as why the value set was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the value set as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the value set is presumed to be the predominant language in the place the value set was created).The description is not intended to describe the semantics of the Value Set - there are no intrinsic semantics separate from the codes contained in its expansion. The description should capture its intended use, which is needed for ensuring integrity for its use in models across future changes. A description should be provided unless the value set is a contained resource (e.g. an anonymous value set in a profile). Most registries will require a description.
  final String? description;

  /// Used when the value set is "expanded"
  /// A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This element holds the expansion, if it has been performed.
  /// Expansion is performed to produce a collection of codes that are ready to use for data entry or validation. Value set expansions are always considered to be stateless - they are a record of the set of codes in the value set at a point in time under a given set of conditions, and are not subject to ongoing maintenance.
  /// Expansion.parameter is  a simplified list of parameters - a subset of the features of the [Parameters](parameters.html) resource.
  final ValueSetExpansion? expansion;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this value set is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of value sets that are appropriate for use versus not.
  final bool? experimental;

  /// Additional identifier for the value set (business identifier)
  /// A formal identifier that is used to identify this value set when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this value set outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Indicates whether or not any change to the content logical definition may occur
  /// If this is set to 'true', then no new versions of the content logical definition can be created.  Note: Other metadata might still change.
  /// Normally immutability is set to 'false', which is the default assumption if it is not populated.  Note that the implication is that if this is set to 'true', there may be only one ValueSet version for this definition. Immutability tends to be set to 'true' in one of two cases: - Where the value set, by the nature of its usage, cannot change.  For example "All specializations of ACT in ActClassCode" - Where there's no safe way to express the "Purpose" such that someone else could safely make changes to the value set definition. Source workflow control must guarantee that the same URI always yields the same definition.
  final bool? immutable;

  /// Intended jurisdiction for value set (if applicable)
  /// A legal or geographic region in which the value set is intended to be used.
  /// It may be possible for the value set to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Name for this value set (computer friendly)
  /// A natural language name identifying the value set. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.A name should be provided unless the value set is a contained resource (e.g. an anonymous value set in a profile). Most registries will require a name.
  final String? name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the value set.
  /// Usually an organization but may be an individual. The publisher (or steward) of the value set is the organization or individual primarily responsible for the maintenance and upkeep of the value set. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the value set. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this value set is defined
  /// Explanation of why this value set is needed and why it has been designed as it has.
  /// This element does not describe the usage of the value set. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this value set.
  final String? purpose;

  /// The status of this value set. Enables tracking the life-cycle of the content. The status of the value set applies to the value set definition (ValueSet.compose) and the associated ValueSet metadata. Expansions do not have a state.
  /// Allows filtering of value sets that are appropriate for use versus not.See also the [valueset-workflowStatus](extension-valueset-workflowstatus.html) extension for additional status information related to the editorial process.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Name for this value set (human friendly)
  /// A short, descriptive, user-friendly title for the value set.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// Canonical identifier for this value set, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this value set when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this value set is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the value set is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate value set instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the value set
  /// The identifier that is used to identify this version of the value set when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the value set author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different value set instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the value set with the format [url]|[version].
  final String? version;
  ValueSet({
    this.compose,
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.description,
    this.expansion,
    this.experimental,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.immutable,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.publisher,
    this.purpose,
    required this.status,
    super.text,
    this.title,
    this.url,
    this.useContext,
    this.version,
  });

  @override
  factory ValueSet.fromJson(Map<String, dynamic> json) {
    return ValueSet(
      compose: json['compose'] != null
          ? ValueSetCompose.fromJson(json['compose'] as Map<String, dynamic>)
          : null,
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      expansion: json['expansion'] != null
          ? ValueSetExpansion.fromJson(
              json['expansion'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      immutable: json['immutable'] as bool?,
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
      url: json['url'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'compose': compose?.toJson(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'date': date,
        'description': description,
        'expansion': expansion?.toJson(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'immutable': immutable,
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'status': status,
        'text': text?.toJson(),
        'title': title,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  ValueSet copyWith({
    ValueSetCompose? compose,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    ValueSetExpansion? expansion,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    bool? immutable,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? purpose,
    String? status,
    Narrative? text,
    String? title,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return ValueSet(
      compose: compose ?? this.compose,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      expansion: expansion ?? this.expansion,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      immutable: immutable ?? this.immutable,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      status: status ?? this.status,
      text: text ?? this.text,
      title: title ?? this.title,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

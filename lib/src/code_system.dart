part of '../fhir_dart.dart';

/// The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
class CodeSystem extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CodeSystem';

  /// If code comparison is case sensitive when codes within this system are compared to each other.
  /// If this value is missing, then it is not specified whether a code system is case sensitive or not. When the rule is not known, Postel's law should be followed: produce codes with the correct case, and accept codes in any case. This element is primarily provided to support validation software.
  final bool? caseSensitive;

  /// If code system defines a compositional grammar
  /// The code system defines a compositional (post-coordination) grammar.
  /// Note that the code system resource does not define what the compositional grammar is, only whether or not there is one.
  final bool? compositional;

  /// Concepts in the code system
  /// Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must be consulted to determine what the meanings of the hierarchical relationships are.
  /// If this is empty, it means that the code system resource does not represent the content of the code system.
  final List<CodeSystemConcept>? concept;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// The extent of the content of the code system (the concepts and codes it defines) are represented in this resource instance.
  final String
      content; // Possible values: 'not-present', 'example', 'fragment', 'complete', 'supplement'
  /// Use and/or publishing restrictions
  /// A copyright statement relating to the code system and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the code system.
  /// ... Sometimes, the copyright differs between the code system and the codes that are included. The copyright statement should clearly differentiate between these when required.
  final String? copyright;

  /// Total concepts in the code system
  /// The total number of concepts defined by the code system. Where the code system has a compositional grammar, the basis of this count is defined by the system steward.
  /// The count of concepts defined in this resource cannot be more than this value but may be less for several reasons - see the content element.
  final int? count;

  /// Date last changed
  /// The date  (and optionally time) when the code system was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the code system changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the code system. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the code system
  /// A free text natural language description of the code system from a consumer's perspective.
  /// This description can be used to capture details such as why the code system was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the code system as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the code system is presumed to be the predominant language in the place the code system was created).
  final String? description;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this code system is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of code systems that are appropriate for use versus not.
  final bool? experimental;

  /// Filter that can be used in a value set
  /// A filter that can be used in a value set compose statement when selecting concepts using a filter.
  /// Note that filters defined in code systems usually require custom code on the part of any terminology engine that will make them available for use in value set filters. For this reason, they are generally only seen in high value published terminologies.
  final List<CodeSystemFilter>? filter;

  /// The meaning of the hierarchy of concepts as represented in this resource.
  /// Note that other representations might have a different hierarchy or none at all, and represent the information using properties.
  final String?
      hierarchyMeaning; // Possible values: 'grouped-by', 'is-a', 'part-of', 'classified-with'
  /// Additional identifier for the code system (business identifier)
  /// A formal identifier that is used to identify this code system when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this code system outside of FHIR, where it is not possible to use the logical URI.  Note that HL7 defines at least three identifiers for many of its code systems - the FHIR canonical URL, the OID and the V2 Table 0396 mnemonic code.
  final List<Identifier>? identifier;

  /// Intended jurisdiction for code system (if applicable)
  /// A legal or geographic region in which the code system is intended to be used.
  /// It may be possible for the code system to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Name for this code system (computer friendly)
  /// A natural language name identifying the code system. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Additional information supplied about each concept
  /// A property defines an additional slot through which additional information can be provided about a concept.
  final List<CodeSystemProperty>? property;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the code system.
  /// Usually an organization but may be an individual. The publisher (or steward) of the code system is the organization or individual primarily responsible for the maintenance and upkeep of the code system. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the code system. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this code system is defined
  /// Explanation of why this code system is needed and why it has been designed as it has.
  /// This element does not describe the usage of the code system. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this code system.
  final String? purpose;

  /// The date (and optionally time) when the code system resource was created or revised.
  /// Allows filtering of code systems that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Canonical URL of Code System this adds designations and properties to
  /// The canonical URL of the code system that this code system supplement is adding designations and properties to.
  /// The most common use of a code system supplement is to add additional language support.
  final String? supplements;

  /// Name for this code system (human friendly)
  /// A short, descriptive, user-friendly title for the code system.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// Canonical identifier for this code system, represented as a URI (globally unique) (Coding.system)
  /// An absolute URI that is used to identify this code system when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this code system is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the code system is stored on different servers. This is used in [Coding](datatypes.html#Coding).system.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate code system instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Canonical reference to the value set with entire code system
  /// Canonical reference to the value set that contains the entire code system.
  /// The definition of the value set SHALL include all codes from this code system and only codes from this code system, and it SHALL be immutable.
  final String? valueSet;

  /// Business version of the code system (Coding.version)
  /// The identifier that is used to identify this version of the code system when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the code system author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. This is used in [Coding](datatypes.html#Coding).version.
  /// There may be different code system instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the code system with the format [url]|[version].
  final String? version;

  /// If definitions are not stable
  /// This flag is used to signify that the code system does not commit to concept permanence across versions. If true, a version must be specified when referencing this code system.
  /// Best practice is that code systems do not redefine concepts, or that if concepts are redefined, a new code system definition is created. But this is not always possible, so some code systems may be defined as 'versionNeeded'.
  /// Most code systems occasionally refine the displays defined for concepts between versions. Contexts in which the concept display values are validated may require that the version be specified for some code systems irrespective of the value of this property.
  final bool? versionNeeded;
  CodeSystem({
    this.caseSensitive,
    this.compositional,
    this.concept,
    this.contact,
    super.contained,
    required this.content,
    this.copyright,
    this.count,
    this.date,
    this.description,
    this.experimental,
    super.fhirExtension,
    this.filter,
    this.hierarchyMeaning,
    super.id,
    this.identifier,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.property,
    this.publisher,
    this.purpose,
    required this.status,
    this.supplements,
    super.text,
    this.title,
    this.url,
    this.useContext,
    this.valueSet,
    this.version,
    this.versionNeeded,
  });

  @override
  factory CodeSystem.fromJson(Map<String, dynamic> json) {
    return CodeSystem(
      caseSensitive: json['caseSensitive'] as bool?,
      compositional: json['compositional'] as bool?,
      concept: (json['concept'] as List<dynamic>?)
          ?.map((e) =>
              CodeSystemConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      content: json['content'] as String,
      copyright: json['copyright'] as String?,
      count: json['count'] as int?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      filter: (json['filter'] as List<dynamic>?)
          ?.map((e) =>
              CodeSystemFilter.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      hierarchyMeaning: json['hierarchyMeaning'] as String?,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      property: (json['property'] as List<dynamic>?)
          ?.map((e) =>
              CodeSystemProperty.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      status: json['status'] as String,
      supplements: json['supplements'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
      url: json['url'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map(
              (e) => UsageContext.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      valueSet: json['valueSet'] as String?,
      version: json['version'] as String?,
      versionNeeded: json['versionNeeded'] as bool?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'caseSensitive': caseSensitive,
        'compositional': compositional,
        'concept': concept?.map((e) => e.toJson()).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'content': content,
        'copyright': copyright,
        'count': count,
        'date': date,
        'description': description,
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'filter': filter?.map((e) => e.toJson()).toList(),
        'hierarchyMeaning': hierarchyMeaning,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'property': property?.map((e) => e.toJson()).toList(),
        'publisher': publisher,
        'purpose': purpose,
        'status': status,
        'supplements': supplements,
        'text': text?.toJson(),
        'title': title,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'valueSet': valueSet,
        'version': version,
        'versionNeeded': versionNeeded,
      };

  @override
  CodeSystem copyWith({
    bool? caseSensitive,
    bool? compositional,
    List<CodeSystemConcept>? concept,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? content,
    String? copyright,
    int? count,
    String? date,
    String? description,
    bool? experimental,
    List<Extension>? fhirExtension,
    List<CodeSystemFilter>? filter,
    String? hierarchyMeaning,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<CodeSystemProperty>? property,
    String? publisher,
    String? purpose,
    String? status,
    String? supplements,
    Narrative? text,
    String? title,
    String? url,
    List<UsageContext>? useContext,
    String? valueSet,
    String? version,
    bool? versionNeeded,
  }) {
    return CodeSystem(
      caseSensitive: caseSensitive ?? this.caseSensitive,
      compositional: compositional ?? this.compositional,
      concept: concept ?? this.concept,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      content: content ?? this.content,
      copyright: copyright ?? this.copyright,
      count: count ?? this.count,
      date: date ?? this.date,
      description: description ?? this.description,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      filter: filter ?? this.filter,
      hierarchyMeaning: hierarchyMeaning ?? this.hierarchyMeaning,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      property: property ?? this.property,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      status: status ?? this.status,
      supplements: supplements ?? this.supplements,
      text: text ?? this.text,
      title: title ?? this.title,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      valueSet: valueSet ?? this.valueSet,
      version: version ?? this.version,
      versionNeeded: versionNeeded ?? this.versionNeeded,
    );
  }
}

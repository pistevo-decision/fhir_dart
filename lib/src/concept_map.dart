part of '../fhir_dart.dart';

/// A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
class ConceptMap extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'ConceptMap';

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the concept map and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the concept map.
  /// Frequently the copyright differs between the concept map and codes that are included. The copyright statement should clearly differentiate between these when required.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the concept map was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the concept map changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the concept map. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the concept map
  /// A free text natural language description of the concept map from a consumer's perspective.
  /// The description is not intended to describe the semantics of the concept map. The description should capture its intended use, which is needed for ensuring integrity for its use in models across future changes.
  final String? description;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this concept map is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of concept maps that are appropriate for use versus not.
  final bool? experimental;

  /// Same source and target systems
  /// A group of mappings that all have the same source and target system.
  final List<ConceptMapGroup>? group;

  /// Additional identifier for the concept map
  /// A formal identifier that is used to identify this concept map when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this concept map outside of FHIR, where it is not possible to use the logical URI.
  final Identifier? identifier;

  /// Intended jurisdiction for concept map (if applicable)
  /// A legal or geographic region in which the concept map is intended to be used.
  /// It may be possible for the concept map to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Name for this concept map (computer friendly)
  /// A natural language name identifying the concept map. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the concept map.
  /// Usually an organization but may be an individual. The publisher (or steward) of the concept map is the organization or individual primarily responsible for the maintenance and upkeep of the concept map. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the concept map. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this concept map is defined
  /// Explanation of why this concept map is needed and why it has been designed as it has.
  /// This element does not describe the usage of the concept map. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this concept map.
  final String? purpose;

  /// The source value set that contains the concepts that are being mapped
  /// Identifier for the source value set that contains the concepts that are being mapped and provides context for the mappings.
  /// Should be a version specific reference. URIs SHOULD be absolute. If there is no source or target value set, there is no specified context for the map (not recommended).  The source value set may select codes from either an explicit (standard or local) or implicit code system.
  final String? sourceCanonical;

  /// The source value set that contains the concepts that are being mapped
  /// Identifier for the source value set that contains the concepts that are being mapped and provides context for the mappings.
  /// Should be a version specific reference. URIs SHOULD be absolute. If there is no source or target value set, there is no specified context for the map (not recommended).  The source value set may select codes from either an explicit (standard or local) or implicit code system.
  final String? sourceUri;

  /// The status of this concept map. Enables tracking the life-cycle of the content.
  /// Allows filtering of concept maps that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// The target value set which provides context for the mappings
  /// The target value set provides context for the mappings. Note that the mapping is made between concepts, not between value sets, but the value set provides important context about how the concept mapping choices are made.
  /// Should be a version specific reference. URIs SHOULD be absolute. If there is no source or target value set, the is no specified context for the map.
  final String? targetCanonical;

  /// The target value set which provides context for the mappings
  /// The target value set provides context for the mappings. Note that the mapping is made between concepts, not between value sets, but the value set provides important context about how the concept mapping choices are made.
  /// Should be a version specific reference. URIs SHOULD be absolute. If there is no source or target value set, the is no specified context for the map.
  final String? targetUri;

  /// Name for this concept map (human friendly)
  /// A short, descriptive, user-friendly title for the concept map.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// Canonical identifier for this concept map, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this concept map when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this concept map is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the concept map is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate concept map instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the concept map
  /// The identifier that is used to identify this version of the concept map when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the concept map author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different concept map instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the concept map with the format [url]|[version].
  final String? version;
  ConceptMap({
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.description,
    this.experimental,
    super.fhirExtension,
    this.group,
    super.id,
    this.identifier,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.publisher,
    this.purpose,
    this.sourceCanonical,
    this.sourceUri,
    required this.status,
    this.targetCanonical,
    this.targetUri,
    super.text,
    this.title,
    this.url,
    this.useContext,
    this.version,
  });

  @override
  factory ConceptMap.fromJson(Map<String, dynamic> json) {
    return ConceptMap(
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map((e) =>
              ConceptMapGroup.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
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
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      sourceCanonical: json['sourceCanonical'] as String?,
      sourceUri: json['sourceUri'] as String?,
      status: json['status'] as String,
      targetCanonical: json['targetCanonical'] as String?,
      targetUri: json['targetUri'] as String?,
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
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'group': group?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'sourceCanonical': sourceCanonical,
        'sourceUri': sourceUri,
        'status': status,
        'targetCanonical': targetCanonical,
        'targetUri': targetUri,
        'text': text?.toJson(),
        'title': title,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  ConceptMap copyWith({
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    bool? experimental,
    List<Extension>? fhirExtension,
    List<ConceptMapGroup>? group,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? purpose,
    String? sourceCanonical,
    String? sourceUri,
    String? status,
    String? targetCanonical,
    String? targetUri,
    Narrative? text,
    String? title,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return ConceptMap(
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      group: group ?? this.group,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      sourceCanonical: sourceCanonical ?? this.sourceCanonical,
      sourceUri: sourceUri ?? this.sourceUri,
      status: status ?? this.status,
      targetCanonical: targetCanonical ?? this.targetCanonical,
      targetUri: targetUri ?? this.targetUri,
      text: text ?? this.text,
      title: title ?? this.title,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

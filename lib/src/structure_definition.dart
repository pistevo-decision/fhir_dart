part of '../fhir_dart.dart';

/// A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in FHIR, and also for describing extensions and constraints on resources and data types.
class StructureDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'StructureDefinition';

  /// Whether the structure is abstract
  /// Whether structure this definition describes is abstract or not  - that is, whether the structure is not intended to be instantiated. For Resources and Data types, abstract types will never be exchanged  between systems.
  /// Abstract Resources cannot be instantiated - a concrete sub-type must be used. Abstract datatypes and extensions cannot be used in an instance. For logical models, the exact implication of "abstract" will rest with the author, depending how the logical model is used. Flagging a constraint structure as abstract conveys design intent but makes no difference to how the structure definition is handled. Note that inline declared elements that are given the type "Element" in the StructureDefinition, but have children described, are anonymous concrete types that specialize Element.
  final bool fhirAbstract;

  /// Definition that this type is constrained/specialized from
  /// An absolute URI that is the base structure from which this type is derived, either by specialization or constraint.
  /// If differential constraints are specified in this structure, they are applied to the base in a "differential" fashion. If there is no base, then the differential constraints cannot be provided (snapshot only). Differential structures are useful for the editing perspective, and snapshot structures are suitable for operational use. The FHIR Project provides a number of tools/services to populate snapshots from differential constraints. Logical Models have a base of "Element" or another logical model.
  final String? baseDefinition;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// If an extension, where it can be used in instances
  /// Identifies the types of resource or data type elements to which the extension can be applied.
  final List<StructureDefinitionContext>? context;

  /// FHIRPath invariants - when the extension can be used
  /// A set of rules as FHIRPath Invariants about when the extension can be used (e.g. co-occurrence variants for the extension). All the rules must be true.
  /// The rules are only evaluated when the extension is present. When evaluating the invariant, the FHIRPath focus is the element that holds the extension, and %extension refers to the extension itself.
  final List<String>? contextInvariant;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the structure definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the structure definition.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the structure definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the structure definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the structure definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// specialization | constraint - How relates to base definition
  /// How the type relates to the baseDefinition.
  /// If the definition is a specialization, then it adds new elements in the differential, and the snapshot includes the inherited elements.  If the definition is a constraint, then it cannot define new elements, it can only make new rules about existing content (see [Profiling Resources](profiling.html#resources)).
  final String? derivation; // Possible values: 'specialization', 'constraint'
  /// Natural language description of the structure definition
  /// A free text natural language description of the structure definition from a consumer's perspective.
  /// This description can be used to capture details such as why the structure definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the structure definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the structure definition is presumed to be the predominant language in the place the structure definition was created).
  final String? description;

  /// Differential view of the structure
  /// A differential view is expressed relative to the base StructureDefinition - a statement of differences that it applies.
  final StructureDefinitionDifferential? differential;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this structure definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of structure definitions that are appropriate for use versus not.
  final bool? experimental;

  /// FHIR Version this StructureDefinition targets
  /// The version of the FHIR specification on which this StructureDefinition is based - this is the formal version of the specification, without the revision number, e.g. [publication].[major].[minor], which is 4.0.1. for this version.
  /// A StructureDefinition does not need to specify the target it applies to as StructureDefinitions will often be valid across multiple versions of FHIR. FHIR tooling can determine whether a StructureDefinition is consistent with a particular StructureDefinition if desired.
  final String?
      fhirVersion; // Possible values: '0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1'
  /// Additional identifier for the structure definition
  /// A formal identifier that is used to identify this structure definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this structure definition outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Intended jurisdiction for structure definition (if applicable)
  /// A legal or geographic region in which the structure definition is intended to be used.
  /// It may be possible for the structure definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Assist with indexing and finding
  /// A set of key words or terms from external terminologies that may be used to assist with indexing and searching of templates nby describing the use of this structure definition, or the content it describes.
  final List<Coding>? keyword;

  /// Defines the kind of structure that this definition is describing.
  final String
      kind; // Possible values: 'primitive-type', 'complex-type', 'resource', 'logical'
  /// External specification that the content is mapped to
  /// An external specification that the content is mapped to.
  final List<StructureDefinitionMapping>? mapping;

  /// Name for this structure definition (computer friendly)
  /// A natural language name identifying the structure definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.Some Examples:
  /// * O2SatObservation
  /// * PresentationReport
  /// * Immunization2
  /// * AcmeAdmissionRecordOld.
  final String name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the structure definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the structure definition is the organization or individual primarily responsible for the maintenance and upkeep of the structure definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the structure definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this structure definition is defined
  /// Explanation of why this structure definition is needed and why it has been designed as it has.
  /// This element does not describe the usage of the structure definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this structure definition.
  final String? purpose;

  /// Snapshot view of the structure
  /// A snapshot view is expressed in a standalone form that can be used and interpreted without considering the base StructureDefinition.
  final StructureDefinitionSnapshot? snapshot;

  /// The status of this structure definition. Enables tracking the life-cycle of the content.
  /// Allows filtering of structure definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Name for this structure definition (human friendly)
  /// A short, descriptive, user-friendly title for the structure definition.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.Applications don't have to use this name but can always fall back to it. The title also corresponds to the label for the root element.
  final String? title;

  /// Type defined or constrained by this structure
  /// The type this structure describes. If the derivation kind is 'specialization' then this is the master definition for a type, and there is always one of these (a data type, an extension, a resource, including abstract ones). Otherwise the structure definition is a constraint on the stated type (and in this case, the type cannot be an abstract type).  References are URLs that are relative to http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only allowed in logical models.
  /// Note that in the case of constraints, the type could be determined by chasing through the baseDefinition references until a concrete structure (derivation = specialization) is reached, or by looking at the path of the first element in the snapshot - if present - but providing the type directly makes for simpler tooling and indexing.
  /// The type must match the elements defined in the differential and the snapshot. For all FHIR defined types, the path name of the element will start with the type name. For logical models, where the type is a URL, the type name SHOULD start with the tail of the type URL where required.
  final String type;

  /// Canonical identifier for this structure definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this structure definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this structure definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the structure definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate structure definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the structure definition
  /// The identifier that is used to identify this version of the structure definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the structure definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different structure definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the structure definition with the format [url]|[version].
  final String? version;
  StructureDefinition({
    required this.fhirAbstract,
    this.baseDefinition,
    this.contact,
    super.contained,
    this.context,
    this.contextInvariant,
    this.copyright,
    this.date,
    this.derivation,
    this.description,
    this.differential,
    this.experimental,
    super.fhirExtension,
    this.fhirVersion,
    super.id,
    this.identifier,
    super.implicitRules,
    this.jurisdiction,
    this.keyword,
    required this.kind,
    super.language,
    this.mapping,
    super.meta,
    super.modifierExtension,
    required this.name,
    this.publisher,
    this.purpose,
    this.snapshot,
    required this.status,
    super.text,
    this.title,
    required this.type,
    required this.url,
    this.useContext,
    this.version,
  });

  @override
  factory StructureDefinition.fromJson(Map<String, dynamic> json) {
    return StructureDefinition(
      fhirAbstract: json['abstract'] as bool,
      baseDefinition: json['baseDefinition'] as String?,
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      context: (json['context'] as List<dynamic>?)
          ?.map((e) =>
              StructureDefinitionContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      contextInvariant: (json['contextInvariant'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      derivation: json['derivation'] as String?,
      description: json['description'] as String?,
      differential: json['differential'] != null
          ? StructureDefinitionDifferential.fromJson(
              json['differential'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirVersion: json['fhirVersion'] as String?,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      keyword: (json['keyword'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: json['kind'] as String,
      language: json['language'] as String?,
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map((e) =>
              StructureDefinitionMapping.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      snapshot: json['snapshot'] != null
          ? StructureDefinitionSnapshot.fromJson(
              json['snapshot'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
      type: json['type'] as String,
      url: json['url'] as String,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'abstract': fhirAbstract,
        'baseDefinition': baseDefinition,
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'context': context?.map((e) => e.toJson()).toList(),
        'contextInvariant': contextInvariant?.map((e) => e).toList(),
        'copyright': copyright,
        'date': date,
        'derivation': derivation,
        'description': description,
        'differential': differential?.toJson(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fhirVersion': fhirVersion,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'keyword': keyword?.map((e) => e.toJson()).toList(),
        'kind': kind,
        'language': language,
        'mapping': mapping?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'snapshot': snapshot?.toJson(),
        'status': status,
        'text': text?.toJson(),
        'title': title,
        'type': type,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  StructureDefinition copyWith({
    bool? fhirAbstract,
    String? baseDefinition,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    List<StructureDefinitionContext>? context,
    List<String>? contextInvariant,
    String? copyright,
    String? date,
    String? derivation,
    String? description,
    StructureDefinitionDifferential? differential,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? fhirVersion,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    List<Coding>? keyword,
    String? kind,
    String? language,
    List<StructureDefinitionMapping>? mapping,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? purpose,
    StructureDefinitionSnapshot? snapshot,
    String? status,
    Narrative? text,
    String? title,
    String? type,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return StructureDefinition(
      fhirAbstract: fhirAbstract ?? this.fhirAbstract,
      baseDefinition: baseDefinition ?? this.baseDefinition,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      context: context ?? this.context,
      contextInvariant: contextInvariant ?? this.contextInvariant,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      derivation: derivation ?? this.derivation,
      description: description ?? this.description,
      differential: differential ?? this.differential,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      keyword: keyword ?? this.keyword,
      kind: kind ?? this.kind,
      language: language ?? this.language,
      mapping: mapping ?? this.mapping,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      snapshot: snapshot ?? this.snapshot,
      status: status ?? this.status,
      text: text ?? this.text,
      title: title ?? this.title,
      type: type ?? this.type,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

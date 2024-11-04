part of '../fhir_dart.dart';

/// The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to describe a collection of knowledge assets.
class Library extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Library';

  /// When the library was approved by publisher
  /// The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
  /// The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
  final String? approvalDate;

  /// Who authored the content
  /// An individiual or organization primarily involved in the creation and maintenance of the content.
  final List<ContactDetail>? author;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Contents of the library, either embedded or referenced
  /// The content of the library as an Attachment. The content may be a reference to a url, or may be directly embedded as a base-64 string. Either way, the contentType of the attachment determines how to interpret the content.
  final List<Attachment>? content;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the library and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the library.
  final String? copyright;

  /// What data is referenced by this library
  /// Describes a set of data that must be provided in order to be able to successfully perform the computations defined by the library.
  final List<DataRequirement>? dataRequirement;

  /// Date last changed
  /// The date  (and optionally time) when the library was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the library changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the library. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the library
  /// A free text natural language description of the library from a consumer's perspective.
  /// This description can be used to capture details such as why the library was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the library as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the library is presumed to be the predominant language in the place the library was created).
  final String? description;

  /// Who edited the content
  /// An individual or organization primarily responsible for internal coherence of the content.
  final List<ContactDetail>? editor;

  /// When the library is expected to be used
  /// The period during which the library content was or is planned to be in active use.
  /// The effective period for a library  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;

  /// Who endorsed the content
  /// An individual or organization responsible for officially endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this library is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of librarys that are appropriate for use versus not.
  final bool? experimental;

  /// Additional identifier for the library
  /// A formal identifier that is used to identify this library when it is represented in other formats, or referenced in a specification, model, design or an instance. e.g. CMS or NQF identifiers for a measure artifact. Note that at least one identifier is required for non-experimental active artifacts.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this library outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Intended jurisdiction for library (if applicable)
  /// A legal or geographic region in which the library is intended to be used.
  /// It may be possible for the library to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// When the library was last reviewed
  /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
  /// If specified, this date follows the original approval date.
  final String? lastReviewDate;

  /// Name for this library (computer friendly)
  /// A natural language name identifying the library. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Parameters defined by the library
  /// The parameter element defines parameters used by the library.
  final List<ParameterDefinition>? parameter;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the library.
  /// Usually an organization but may be an individual. The publisher (or steward) of the library is the organization or individual primarily responsible for the maintenance and upkeep of the library. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the library. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this library is defined
  /// Explanation of why this library is needed and why it has been designed as it has.
  /// This element does not describe the usage of the library. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this library.
  final String? purpose;

  /// Additional documentation, citations, etc.
  /// Related artifacts such as additional documentation, justification, or bibliographic references.
  /// Each related artifact is either an attachment, or a reference to another resource, but not both.
  final List<RelatedArtifact>? relatedArtifact;

  /// Who reviewed the content
  /// An individual or organization primarily responsible for review of some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// The status of this library. Enables tracking the life-cycle of the content.
  /// Allows filtering of libraries that are appropriate for use vs. not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Type of individual the library content is focused on
  /// A code or group definition that describes the intended subject of the contents of the library.
  final CodeableConcept? subjectCodeableConcept;

  /// Type of individual the library content is focused on
  /// A code or group definition that describes the intended subject of the contents of the library.
  final Reference? subjectReference;

  /// Subordinate title of the library
  /// An explanatory or alternate title for the library giving additional information about its content.
  final String? subtitle;

  /// Name for this library (human friendly)
  /// A short, descriptive, user-friendly title for the library.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// E.g. Education, Treatment, Assessment, etc.
  /// Descriptive topics related to the content of the library. Topics provide a high-level categorization of the library that can be useful for filtering and searching.
  final List<CodeableConcept>? topic;

  /// logic-library | model-definition | asset-collection | module-definition
  /// Identifies the type of library such as a Logic Library, Model Definition, Asset Collection, or Module Definition.
  final CodeableConcept type;

  /// Canonical identifier for this library, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this library when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this library is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the library is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// Describes the clinical usage of the library
  /// A detailed description of how the library is used from a clinical perspective.
  final String? usage;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate library instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the library
  /// The identifier that is used to identify this version of the library when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the library author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
  /// There may be different library instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the library with the format [url]|[version].
  final String? version;
  Library({
    this.approvalDate,
    this.author,
    this.contact,
    super.contained,
    this.content,
    this.copyright,
    this.dataRequirement,
    this.date,
    this.description,
    this.editor,
    this.effectivePeriod,
    this.endorser,
    this.experimental,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    this.lastReviewDate,
    super.meta,
    super.modifierExtension,
    this.name,
    this.parameter,
    this.publisher,
    this.purpose,
    this.relatedArtifact,
    this.reviewer,
    required this.status,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subtitle,
    super.text,
    this.title,
    this.topic,
    required this.type,
    this.url,
    this.usage,
    this.useContext,
    this.version,
  });

  @override
  factory Library.fromJson(Map<String, dynamic> json) {
    return Library(
      approvalDate: json['approvalDate'] as String?,
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      dataRequirement: (json['dataRequirement'] as List<dynamic>?)
          ?.map((e) => DataRequirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] as String?,
      description: json['description'] as String?,
      editor: (json['editor'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      lastReviewDate: json['lastReviewDate'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => ParameterDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>)
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(json['subjectReference'] as Map<String, dynamic>)
          : null,
      subtitle: json['subtitle'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      url: json['url'] as String?,
      usage: json['usage'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'approvalDate': approvalDate,
        'author': author?.map((e) => e.toJson()).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'content': content?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'dataRequirement': dataRequirement?.map((e) => e.toJson()).toList(),
        'date': date,
        'description': description,
        'editor': editor?.map((e) => e.toJson()).toList(),
        'effectivePeriod': effectivePeriod?.toJson(),
        'endorser': endorser?.map((e) => e.toJson()).toList(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'lastReviewDate': lastReviewDate,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'parameter': parameter?.map((e) => e.toJson()).toList(),
        'publisher': publisher,
        'purpose': purpose,
        'relatedArtifact': relatedArtifact?.map((e) => e.toJson()).toList(),
        'reviewer': reviewer?.map((e) => e.toJson()).toList(),
        'status': status,
        'subjectCodeableConcept': subjectCodeableConcept?.toJson(),
        'subjectReference': subjectReference?.toJson(),
        'subtitle': subtitle,
        'text': text?.toJson(),
        'title': title,
        'topic': topic?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
        'url': url,
        'usage': usage,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  Library copyWith({
    String? approvalDate,
    List<ContactDetail>? author,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    List<Attachment>? content,
    String? copyright,
    List<DataRequirement>? dataRequirement,
    String? date,
    String? description,
    List<ContactDetail>? editor,
    Period? effectivePeriod,
    List<ContactDetail>? endorser,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    String? lastReviewDate,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<ParameterDefinition>? parameter,
    String? publisher,
    String? purpose,
    List<RelatedArtifact>? relatedArtifact,
    List<ContactDetail>? reviewer,
    String? status,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    String? subtitle,
    Narrative? text,
    String? title,
    List<CodeableConcept>? topic,
    CodeableConcept? type,
    String? url,
    String? usage,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return Library(
      approvalDate: approvalDate ?? this.approvalDate,
      author: author ?? this.author,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      content: content ?? this.content,
      copyright: copyright ?? this.copyright,
      dataRequirement: dataRequirement ?? this.dataRequirement,
      date: date ?? this.date,
      description: description ?? this.description,
      editor: editor ?? this.editor,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      endorser: endorser ?? this.endorser,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      parameter: parameter ?? this.parameter,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      reviewer: reviewer ?? this.reviewer,
      status: status ?? this.status,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subtitle: subtitle ?? this.subtitle,
      text: text ?? this.text,
      title: title ?? this.title,
      topic: topic ?? this.topic,
      type: type ?? this.type,
      url: url ?? this.url,
      usage: usage ?? this.usage,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

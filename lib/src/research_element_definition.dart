part of '../fhir_dart.dart';

/// PICO stands for Population (the population within which exposures are being compared), Intervention (the conditional state or exposure state being described for its effect on outcomes), Comparison (the alternative conditional state or alternative exposure state being compared against), and Outcome (the result or effect of the intervention in the population).
/// The ResearchElementDefinition resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
/// Need to be able to define and reuse the definition of individual elements of a research question.
class ResearchElementDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'ResearchElementDefinition';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// When the research element definition was approved by publisher
  /// The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
  /// The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
  final String? approvalDate;

  /// Who authored the content
  /// An individiual or organization primarily involved in the creation and maintenance of the content.
  final List<ContactDetail>? author;

  /// What defines the members of the research element
  /// A characteristic that defines the members of the research element. Multiple characteristics are applied with "and" semantics.
  /// Characteristics can be defined flexibly to accommodate different use cases for membership criteria, ranging from simple codes, all the way to using an expression language to express the criteria.
  final List<ResearchElementDefinitionCharacteristic> characteristic;

  /// Used for footnotes or explanatory notes
  /// A human-readable string to clarify or explain concepts about the resource.
  final List<String>? comment;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the research element definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the research element definition.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the research element definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the research element definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the research element definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the research element definition
  /// A free text natural language description of the research element definition from a consumer's perspective.
  /// This description can be used to capture details such as why the research element definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the research element definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the research element definition is presumed to be the predominant language in the place the research element definition was created).
  final String? description;

  /// Who edited the content
  /// An individual or organization primarily responsible for internal coherence of the content.
  final List<ContactDetail>? editor;

  /// When the research element definition is expected to be used
  /// The period during which the research element definition content was or is planned to be in active use.
  /// The effective period for a research element definition  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;

  /// Who endorsed the content
  /// An individual or organization responsible for officially endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this research element definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of research element definitions that are appropriate for use versus not.
  final bool? experimental;

  /// Additional identifier for the research element definition
  /// A formal identifier that is used to identify this research element definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this research element definition outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Intended jurisdiction for research element definition (if applicable)
  /// A legal or geographic region in which the research element definition is intended to be used.
  /// It may be possible for the research element definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// When the research element definition was last reviewed
  /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
  /// If specified, this date follows the original approval date.
  final String? lastReviewDate;

  /// Logic used by the ResearchElementDefinition
  /// A reference to a Library resource containing the formal logic used by the ResearchElementDefinition.
  final List<String>? fhirLibrary;

  /// Name for this research element definition (computer friendly)
  /// A natural language name identifying the research element definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the research element definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the research element definition is the organization or individual primarily responsible for the maintenance and upkeep of the research element definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the research element definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this research element definition is defined
  /// Explanation of why this research element definition is needed and why it has been designed as it has.
  /// This element does not describe the usage of the research element definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this research element definition.
  final String? purpose;

  /// Additional documentation, citations, etc.
  /// Related artifacts such as additional documentation, justification, or bibliographic references.
  /// Each related artifact is either an attachment, or a reference to another resource, but not both.
  final List<RelatedArtifact>? relatedArtifact;

  /// Who reviewed the content
  /// An individual or organization primarily responsible for review of some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// Title for use in informal contexts
  /// The short title provides an alternate title for use in informal descriptive contexts where the full, formal title is not necessary.
  final String? shortTitle;

  /// The status of this research element definition. Enables tracking the life-cycle of the content.
  /// Allows filtering of research element definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
  /// The intended subjects for the ResearchElementDefinition. If this element is not provided, a Patient subject is assumed, but the subject of the ResearchElementDefinition can be anything.
  /// The subject of the ResearchElementDefinition is critical in interpreting the criteria definitions, as the logic in the ResearchElementDefinitions is evaluated with respect to a particular subject. This corresponds roughly to the notion of a Compartment in that it limits what content is available based on its relationship to the subject. In CQL, this corresponds to the context declaration.
  final CodeableConcept? subjectCodeableConcept;

  /// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
  /// The intended subjects for the ResearchElementDefinition. If this element is not provided, a Patient subject is assumed, but the subject of the ResearchElementDefinition can be anything.
  /// The subject of the ResearchElementDefinition is critical in interpreting the criteria definitions, as the logic in the ResearchElementDefinitions is evaluated with respect to a particular subject. This corresponds roughly to the notion of a Compartment in that it limits what content is available based on its relationship to the subject. In CQL, this corresponds to the context declaration.
  final Reference? subjectReference;

  /// Subordinate title of the ResearchElementDefinition
  /// An explanatory or alternate title for the ResearchElementDefinition giving additional information about its content.
  final String? subtitle;

  /// Name for this research element definition (human friendly)
  /// A short, descriptive, user-friendly title for the research element definition.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// The category of the ResearchElementDefinition, such as Education, Treatment, Assessment, etc.
  /// Descriptive topics related to the content of the ResearchElementDefinition. Topics provide a high-level categorization grouping types of ResearchElementDefinitions that can be useful for filtering and searching.
  final List<CodeableConcept>? topic;

  /// The type of research element, a population, an exposure, or an outcome.
  final String type; // Possible values: 'population', 'exposure', 'outcome'
  /// Canonical identifier for this research element definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this research element definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this research element definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the research element definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// Describes the clinical usage of the ResearchElementDefinition
  /// A detailed description, from a clinical perspective, of how the ResearchElementDefinition is used.
  final String? usage;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate research element definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// The type of the outcome (e.g. Dichotomous, Continuous, or Descriptive).
  final String?
      variableType; // Possible values: 'dichotomous', 'continuous', 'descriptive'
  /// Business version of the research element definition
  /// The identifier that is used to identify this version of the research element definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the research element definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
  /// There may be different research element definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the research element definition with the format [url]|[version].
  final String? version;
  ResearchElementDefinition({
    this.approvalDate,
    this.author,
    required this.characteristic,
    this.comment,
    this.contact,
    super.contained,
    this.copyright,
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
    this.fhirLibrary,
    super.meta,
    super.modifierExtension,
    this.name,
    this.publisher,
    this.purpose,
    this.relatedArtifact,
    this.reviewer,
    this.shortTitle,
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
    this.variableType,
    this.version,
  });

  @override
  factory ResearchElementDefinition.fromJson(Map<String, dynamic> json) {
    return ResearchElementDefinition(
      approvalDate: json['approvalDate'] as String?,
      author: (json['author'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>)
          .map((e) => ResearchElementDefinitionCharacteristic.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      comment:
          (json['comment'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
      editor: (json['editor'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              (json['effectivePeriod'] as Map).cast<String, dynamic>())
          : null,
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      lastReviewDate: json['lastReviewDate'] as String?,
      fhirLibrary:
          (json['library'] as List<dynamic>?)?.map((e) => e as String).toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map((e) =>
              RelatedArtifact.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      shortTitle: json['shortTitle'] as String?,
      status: json['status'] as String,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['subjectCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(
              (json['subjectReference'] as Map).cast<String, dynamic>())
          : null,
      subtitle: json['subtitle'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] as String,
      url: json['url'] as String?,
      usage: json['usage'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map(
              (e) => UsageContext.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      variableType: json['variableType'] as String?,
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'approvalDate': approvalDate,
        'author': author?.map((e) => e.toJson()).toList(),
        'characteristic': characteristic.map((e) => e.toJson()).toList(),
        'comment': comment?.map((e) => e).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
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
        'library': fhirLibrary?.map((e) => e).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'relatedArtifact': relatedArtifact?.map((e) => e.toJson()).toList(),
        'reviewer': reviewer?.map((e) => e.toJson()).toList(),
        'shortTitle': shortTitle,
        'status': status,
        'subjectCodeableConcept': subjectCodeableConcept?.toJson(),
        'subjectReference': subjectReference?.toJson(),
        'subtitle': subtitle,
        'text': text?.toJson(),
        'title': title,
        'topic': topic?.map((e) => e.toJson()).toList(),
        'type': type,
        'url': url,
        'usage': usage,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'variableType': variableType,
        'version': version,
      };

  @override
  ResearchElementDefinition copyWith({
    String? approvalDate,
    List<ContactDetail>? author,
    List<ResearchElementDefinitionCharacteristic>? characteristic,
    List<String>? comment,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
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
    List<String>? fhirLibrary,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? purpose,
    List<RelatedArtifact>? relatedArtifact,
    List<ContactDetail>? reviewer,
    String? shortTitle,
    String? status,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    String? subtitle,
    Narrative? text,
    String? title,
    List<CodeableConcept>? topic,
    String? type,
    String? url,
    String? usage,
    List<UsageContext>? useContext,
    String? variableType,
    String? version,
  }) {
    return ResearchElementDefinition(
      approvalDate: approvalDate ?? this.approvalDate,
      author: author ?? this.author,
      characteristic: characteristic ?? this.characteristic,
      comment: comment ?? this.comment,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
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
      fhirLibrary: fhirLibrary ?? this.fhirLibrary,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      reviewer: reviewer ?? this.reviewer,
      shortTitle: shortTitle ?? this.shortTitle,
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
      variableType: variableType ?? this.variableType,
      version: version ?? this.version,
    );
  }
}

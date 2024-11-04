part of '../fhir_dart.dart';

 /// The Evidence resource describes the conditional state (population and any exposures being compared within the population) and outcome (if specified) that the knowledge (evidence, assertion, recommendation) is about.
class Evidence extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Evidence';
   /// When the evidence was approved by publisher
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
   /// Use and/or publishing restrictions
   /// A copyright statement relating to the evidence and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the evidence.
  final String? copyright;
   /// Date last changed
   /// The date  (and optionally time) when the evidence was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the evidence changes.
   /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the evidence. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;
   /// Natural language description of the evidence
   /// A free text natural language description of the evidence from a consumer's perspective.
   /// This description can be used to capture details such as why the evidence was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the evidence as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the evidence is presumed to be the predominant language in the place the evidence was created).
  final String? description;
   /// Who edited the content
   /// An individual or organization primarily responsible for internal coherence of the content.
  final List<ContactDetail>? editor;
   /// When the evidence is expected to be used
   /// The period during which the evidence content was or is planned to be in active use.
   /// The effective period for a evidence  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;
   /// Who endorsed the content
   /// An individual or organization responsible for officially endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;
   /// What population?
   /// A reference to a EvidenceVariable resource that defines the population for the research.
  final Reference exposureBackground;
   /// What exposure?
   /// A reference to a EvidenceVariable resource that defines the exposure for the research.
  final List<Reference>? exposureVariant;
   /// Additional identifier for the evidence
   /// A formal identifier that is used to identify this evidence when it is represented in other formats, or referenced in a specification, model, design or an instance.
   /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this evidence outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;
   /// Intended jurisdiction for evidence (if applicable)
   /// A legal or geographic region in which the evidence is intended to be used.
   /// It may be possible for the evidence to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;
   /// When the evidence was last reviewed
   /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
   /// If specified, this date follows the original approval date.
  final String? lastReviewDate;
   /// Name for this evidence (computer friendly)
   /// A natural language name identifying the evidence. This name should be usable as an identifier for the module by machine processing applications such as code generation.
   /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;
   /// Used for footnotes or explanatory notes
   /// A human-readable string to clarify or explain concepts about the resource.
  final List<Annotation>? note;
   /// What outcome?
   /// A reference to a EvidenceVariable resomece that defines the outcome for the research.
  final List<Reference>? outcome;
   /// Name of the publisher (organization or individual)
   /// The name of the organization or individual that published the evidence.
   /// Usually an organization but may be an individual. The publisher (or steward) of the evidence is the organization or individual primarily responsible for the maintenance and upkeep of the evidence. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the evidence. This item SHOULD be populated unless the information is available from context.
  final String? publisher;
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
   /// The status of this evidence. Enables tracking the life-cycle of the content.
   /// Allows filtering of evidences that are appropriate for use versus not.
  final String status; // Possible values: 'draft', 'active', 'retired', 'unknown'
   /// Subordinate title of the Evidence
   /// An explanatory or alternate title for the Evidence giving additional information about its content.
  final String? subtitle;
   /// Name for this evidence (human friendly)
   /// A short, descriptive, user-friendly title for the evidence.
   /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;
   /// The category of the Evidence, such as Education, Treatment, Assessment, etc.
   /// Descriptive topics related to the content of the Evidence. Topics provide a high-level categorization grouping types of Evidences that can be useful for filtering and searching.
  final List<CodeableConcept>? topic;
   /// Canonical identifier for this evidence, represented as a URI (globally unique)
   /// An absolute URI that is used to identify this evidence when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this evidence is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the evidence is stored on different servers.
   /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
   /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions). 
   /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;
   /// The context that the content is intended to support
   /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate evidence instances.
   /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;
   /// Business version of the evidence
   /// The identifier that is used to identify this version of the evidence when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the evidence author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
   /// There may be different evidence instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the evidence with the format [url]|[version].
  final String? version;
  Evidence({
    this.approvalDate,
    this.author,
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.description,
    this.editor,
    this.effectivePeriod,
    this.endorser,
    required this.exposureBackground,
    this.exposureVariant,
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
    this.note,
    this.outcome,
    this.publisher,
    this.relatedArtifact,
    this.reviewer,
    this.shortTitle,
    required this.status,
    this.subtitle,
    super.text,
    this.title,
    this.topic,
    this.url,
    this.useContext,
    this.version,
  });
  
  @override
  factory Evidence.fromJson(Map<String, dynamic> json) {
    return Evidence(
      approvalDate: json['approvalDate'] as String?,
      author: (json['author'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      contact: (json['contact'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      editor: (json['editor'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      effectivePeriod: json['effectivePeriod'] != null ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>) : null,
      endorser: (json['endorser'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      exposureBackground: Reference.fromJson(json['exposureBackground'] as Map<String, dynamic>),
      exposureVariant: (json['exposureVariant'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      language: json['language'] as String?,
      lastReviewDate: json['lastReviewDate'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
      note: (json['note'] as List<dynamic>?)?.map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
      outcome: (json['outcome'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      publisher: json['publisher'] as String?,
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>)).toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      shortTitle: json['shortTitle'] as String?,
      status: json['status'] as String,
      subtitle: json['subtitle'] as String?,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      title: json['title'] as String?,
      topic: (json['topic'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      url: json['url'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>)).toList(),
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'approvalDate': approvalDate,
      'author': author?.map((e) => e.toJson()).toList(),
      'contact': contact?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'copyright': copyright,
      'date': date,
      'description': description,
      'editor': editor?.map((e) => e.toJson()).toList(),
      'effectivePeriod': effectivePeriod?.toJson(),
      'endorser': endorser?.map((e) => e.toJson()).toList(),
      'exposureBackground': exposureBackground.toJson(),
      'exposureVariant': exposureVariant?.map((e) => e.toJson()).toList(),
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
      'note': note?.map((e) => e.toJson()).toList(),
      'outcome': outcome?.map((e) => e.toJson()).toList(),
      'publisher': publisher,
      'relatedArtifact': relatedArtifact?.map((e) => e.toJson()).toList(),
      'reviewer': reviewer?.map((e) => e.toJson()).toList(),
      'shortTitle': shortTitle,
      'status': status,
      'subtitle': subtitle,
      'text': text?.toJson(),
      'title': title,
      'topic': topic?.map((e) => e.toJson()).toList(),
      'url': url,
      'useContext': useContext?.map((e) => e.toJson()).toList(),
      'version': version,
    };
  
  @override
  Evidence copyWith({
    String? approvalDate,
    List<ContactDetail>? author,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    List<ContactDetail>? editor,
    Period? effectivePeriod,
    List<ContactDetail>? endorser,
    Reference? exposureBackground,
    List<Reference>? exposureVariant,
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
    List<Annotation>? note,
    List<Reference>? outcome,
    String? publisher,
    List<RelatedArtifact>? relatedArtifact,
    List<ContactDetail>? reviewer,
    String? shortTitle,
    String? status,
    String? subtitle,
    Narrative? text,
    String? title,
    List<CodeableConcept>? topic,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return Evidence(
      approvalDate: approvalDate ?? this.approvalDate,
      author: author ?? this.author,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      editor: editor ?? this.editor,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      endorser: endorser ?? this.endorser,
      exposureBackground: exposureBackground ?? this.exposureBackground,
      exposureVariant: exposureVariant ?? this.exposureVariant,
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
      note: note ?? this.note,
      outcome: outcome ?? this.outcome,
      publisher: publisher ?? this.publisher,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      reviewer: reviewer ?? this.reviewer,
      shortTitle: shortTitle ?? this.shortTitle,
      status: status ?? this.status,
      subtitle: subtitle ?? this.subtitle,
      text: text ?? this.text,
      title: title ?? this.title,
      topic: topic ?? this.topic,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

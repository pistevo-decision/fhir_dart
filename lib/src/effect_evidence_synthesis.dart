part of '../fhir_dart.dart';

 /// The EffectEvidenceSynthesis resource describes the difference in an outcome between exposures states in a population where the effect estimate is derived from a combination of research studies.
class EffectEvidenceSynthesis extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'EffectEvidenceSynthesis';
   /// When the effect evidence synthesis was approved by publisher
   /// The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
   /// The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
  final String? approvalDate;
   /// Who authored the content
   /// An individiual or organization primarily involved in the creation and maintenance of the content.
  final List<ContactDetail>? author;
   /// How certain is the effect
   /// A description of the certainty of the effect estimate.
  final List<EffectEvidenceSynthesisCertainty>? certainty;
   /// Contact details for the publisher
   /// Contact details to assist a user in finding and communicating with the publisher.
   /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;
   /// Use and/or publishing restrictions
   /// A copyright statement relating to the effect evidence synthesis and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the effect evidence synthesis.
  final String? copyright;
   /// Date last changed
   /// The date  (and optionally time) when the effect evidence synthesis was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the effect evidence synthesis changes.
   /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the effect evidence synthesis. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;
   /// Natural language description of the effect evidence synthesis
   /// A free text natural language description of the effect evidence synthesis from a consumer's perspective.
   /// This description can be used to capture details such as why the effect evidence synthesis was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the effect evidence synthesis as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the effect evidence synthesis is presumed to be the predominant language in the place the effect evidence synthesis was created).
  final String? description;
   /// Who edited the content
   /// An individual or organization primarily responsible for internal coherence of the content.
  final List<ContactDetail>? editor;
   /// What was the estimated effect
   /// The estimated effect of the exposure variant.
  final List<EffectEvidenceSynthesisEffectEstimate>? effectEstimate;
   /// When the effect evidence synthesis is expected to be used
   /// The period during which the effect evidence synthesis content was or is planned to be in active use.
   /// The effective period for a effect evidence synthesis  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;
   /// Who endorsed the content
   /// An individual or organization responsible for officially endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;
   /// What exposure?
   /// A reference to a EvidenceVariable resource that defines the exposure for the research.
  final Reference exposure;
   /// What comparison exposure?
   /// A reference to a EvidenceVariable resource that defines the comparison exposure for the research.
  final Reference exposureAlternative;
   /// Additional identifier for the effect evidence synthesis
   /// A formal identifier that is used to identify this effect evidence synthesis when it is represented in other formats, or referenced in a specification, model, design or an instance.
   /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this effect evidence synthesis outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;
   /// Intended jurisdiction for effect evidence synthesis (if applicable)
   /// A legal or geographic region in which the effect evidence synthesis is intended to be used.
   /// It may be possible for the effect evidence synthesis to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;
   /// When the effect evidence synthesis was last reviewed
   /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
   /// If specified, this date follows the original approval date.
  final String? lastReviewDate;
   /// Name for this effect evidence synthesis (computer friendly)
   /// A natural language name identifying the effect evidence synthesis. This name should be usable as an identifier for the module by machine processing applications such as code generation.
   /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;
   /// Used for footnotes or explanatory notes
   /// A human-readable string to clarify or explain concepts about the resource.
  final List<Annotation>? note;
   /// What outcome?
   /// A reference to a EvidenceVariable resomece that defines the outcome for the research.
  final Reference outcome;
   /// What population?
   /// A reference to a EvidenceVariable resource that defines the population for the research.
  final Reference population;
   /// Name of the publisher (organization or individual)
   /// The name of the organization or individual that published the effect evidence synthesis.
   /// Usually an organization but may be an individual. The publisher (or steward) of the effect evidence synthesis is the organization or individual primarily responsible for the maintenance and upkeep of the effect evidence synthesis. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the effect evidence synthesis. This item SHOULD be populated unless the information is available from context.
  final String? publisher;
   /// Additional documentation, citations, etc.
   /// Related artifacts such as additional documentation, justification, or bibliographic references.
   /// Each related artifact is either an attachment, or a reference to another resource, but not both.
  final List<RelatedArtifact>? relatedArtifact;
   /// What was the result per exposure?
   /// A description of the results for each exposure considered in the effect estimate.
  final List<EffectEvidenceSynthesisResultsByExposure>? resultsByExposure;
   /// Who reviewed the content
   /// An individual or organization primarily responsible for review of some aspect of the content.
  final List<ContactDetail>? reviewer;
   /// What sample size was involved?
   /// A description of the size of the sample involved in the synthesis.
  final EffectEvidenceSynthesisSampleSize? sampleSize;
   /// The status of this effect evidence synthesis. Enables tracking the life-cycle of the content.
   /// Allows filtering of effect evidence synthesiss that are appropriate for use versus not.
  final String status; // Possible values: 'draft', 'active', 'retired', 'unknown'
   /// Type of study eg randomized trial.
  final CodeableConcept? studyType;
   /// Type of synthesis eg meta-analysis.
  final CodeableConcept? synthesisType;
   /// Name for this effect evidence synthesis (human friendly)
   /// A short, descriptive, user-friendly title for the effect evidence synthesis.
   /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;
   /// The category of the EffectEvidenceSynthesis, such as Education, Treatment, Assessment, etc.
   /// Descriptive topics related to the content of the EffectEvidenceSynthesis. Topics provide a high-level categorization grouping types of EffectEvidenceSynthesiss that can be useful for filtering and searching.
  final List<CodeableConcept>? topic;
   /// Canonical identifier for this effect evidence synthesis, represented as a URI (globally unique)
   /// An absolute URI that is used to identify this effect evidence synthesis when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this effect evidence synthesis is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the effect evidence synthesis is stored on different servers.
   /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
   /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions). 
   /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;
   /// The context that the content is intended to support
   /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate effect evidence synthesis instances.
   /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;
   /// Business version of the effect evidence synthesis
   /// The identifier that is used to identify this version of the effect evidence synthesis when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the effect evidence synthesis author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
   /// There may be different effect evidence synthesis instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the effect evidence synthesis with the format [url]|[version].
  final String? version;
  EffectEvidenceSynthesis({
    this.approvalDate,
    this.author,
    this.certainty,
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.description,
    this.editor,
    this.effectEstimate,
    this.effectivePeriod,
    this.endorser,
    required this.exposure,
    required this.exposureAlternative,
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
    required this.outcome,
    required this.population,
    this.publisher,
    this.relatedArtifact,
    this.resultsByExposure,
    this.reviewer,
    this.sampleSize,
    required this.status,
    this.studyType,
    this.synthesisType,
    super.text,
    this.title,
    this.topic,
    this.url,
    this.useContext,
    this.version,
  });
  
  @override
  factory EffectEvidenceSynthesis.fromJson(Map<String, dynamic> json) {
    return EffectEvidenceSynthesis(
      approvalDate: json['approvalDate'] as String?,
      author: (json['author'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      certainty: (json['certainty'] as List<dynamic>?)?.map((e) => EffectEvidenceSynthesisCertainty.fromJson(e as Map<String, dynamic>)).toList(),
      contact: (json['contact'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      editor: (json['editor'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      effectEstimate: (json['effectEstimate'] as List<dynamic>?)?.map((e) => EffectEvidenceSynthesisEffectEstimate.fromJson(e as Map<String, dynamic>)).toList(),
      effectivePeriod: json['effectivePeriod'] != null ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>) : null,
      endorser: (json['endorser'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      exposure: Reference.fromJson(json['exposure'] as Map<String, dynamic>),
      exposureAlternative: Reference.fromJson(json['exposureAlternative'] as Map<String, dynamic>),
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
      outcome: Reference.fromJson(json['outcome'] as Map<String, dynamic>),
      population: Reference.fromJson(json['population'] as Map<String, dynamic>),
      publisher: json['publisher'] as String?,
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>)).toList(),
      resultsByExposure: (json['resultsByExposure'] as List<dynamic>?)?.map((e) => EffectEvidenceSynthesisResultsByExposure.fromJson(e as Map<String, dynamic>)).toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      sampleSize: json['sampleSize'] != null ? EffectEvidenceSynthesisSampleSize.fromJson(json['sampleSize'] as Map<String, dynamic>) : null,
      status: json['status'] as String,
      studyType: json['studyType'] != null ? CodeableConcept.fromJson(json['studyType'] as Map<String, dynamic>) : null,
      synthesisType: json['synthesisType'] != null ? CodeableConcept.fromJson(json['synthesisType'] as Map<String, dynamic>) : null,
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
      'certainty': certainty?.map((e) => e.toJson()).toList(),
      'contact': contact?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'copyright': copyright,
      'date': date,
      'description': description,
      'editor': editor?.map((e) => e.toJson()).toList(),
      'effectEstimate': effectEstimate?.map((e) => e.toJson()).toList(),
      'effectivePeriod': effectivePeriod?.toJson(),
      'endorser': endorser?.map((e) => e.toJson()).toList(),
      'exposure': exposure.toJson(),
      'exposureAlternative': exposureAlternative.toJson(),
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
      'outcome': outcome.toJson(),
      'population': population.toJson(),
      'publisher': publisher,
      'relatedArtifact': relatedArtifact?.map((e) => e.toJson()).toList(),
      'resultsByExposure': resultsByExposure?.map((e) => e.toJson()).toList(),
      'reviewer': reviewer?.map((e) => e.toJson()).toList(),
      'sampleSize': sampleSize?.toJson(),
      'status': status,
      'studyType': studyType?.toJson(),
      'synthesisType': synthesisType?.toJson(),
      'text': text?.toJson(),
      'title': title,
      'topic': topic?.map((e) => e.toJson()).toList(),
      'url': url,
      'useContext': useContext?.map((e) => e.toJson()).toList(),
      'version': version,
    };
  
  @override
  EffectEvidenceSynthesis copyWith({
    String? approvalDate,
    List<ContactDetail>? author,
    List<EffectEvidenceSynthesisCertainty>? certainty,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    List<ContactDetail>? editor,
    List<EffectEvidenceSynthesisEffectEstimate>? effectEstimate,
    Period? effectivePeriod,
    List<ContactDetail>? endorser,
    Reference? exposure,
    Reference? exposureAlternative,
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
    Reference? outcome,
    Reference? population,
    String? publisher,
    List<RelatedArtifact>? relatedArtifact,
    List<EffectEvidenceSynthesisResultsByExposure>? resultsByExposure,
    List<ContactDetail>? reviewer,
    EffectEvidenceSynthesisSampleSize? sampleSize,
    String? status,
    CodeableConcept? studyType,
    CodeableConcept? synthesisType,
    Narrative? text,
    String? title,
    List<CodeableConcept>? topic,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return EffectEvidenceSynthesis(
      approvalDate: approvalDate ?? this.approvalDate,
      author: author ?? this.author,
      certainty: certainty ?? this.certainty,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      editor: editor ?? this.editor,
      effectEstimate: effectEstimate ?? this.effectEstimate,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      endorser: endorser ?? this.endorser,
      exposure: exposure ?? this.exposure,
      exposureAlternative: exposureAlternative ?? this.exposureAlternative,
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
      population: population ?? this.population,
      publisher: publisher ?? this.publisher,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      resultsByExposure: resultsByExposure ?? this.resultsByExposure,
      reviewer: reviewer ?? this.reviewer,
      sampleSize: sampleSize ?? this.sampleSize,
      status: status ?? this.status,
      studyType: studyType ?? this.studyType,
      synthesisType: synthesisType ?? this.synthesisType,
      text: text ?? this.text,
      title: title ?? this.title,
      topic: topic ?? this.topic,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

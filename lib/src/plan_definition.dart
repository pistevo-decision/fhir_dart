part of '../fhir_dart.dart';

/// This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical artifacts such as clinical decision support rules, order sets and protocols.
class PlanDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'PlanDefinition';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Action defined by the plan
  /// An action or group of actions to be taken as part of the plan.
  /// Note that there is overlap between many of the elements defined here and the ActivityDefinition resource. When an ActivityDefinition is referenced (using the definition element), the overlapping elements in the plan override the content of the referenced ActivityDefinition unless otherwise documented in the specific elements. See the PlanDefinition resource for more detailed information.
  final List<PlanDefinitionAction>? action;

  /// When the plan definition was approved by publisher
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
  /// A copyright statement relating to the plan definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the plan definition.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the plan definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the plan definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the plan definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the plan definition
  /// A free text natural language description of the plan definition from a consumer's perspective.
  /// This description can be used to capture details such as why the plan definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the plan definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the plan definition is presumed to be the predominant language in the place the plan definition was created).
  final String? description;

  /// Who edited the content
  /// An individual or organization primarily responsible for internal coherence of the content.
  final List<ContactDetail>? editor;

  /// When the plan definition is expected to be used
  /// The period during which the plan definition content was or is planned to be in active use.
  /// The effective period for a plan definition  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;

  /// Who endorsed the content
  /// An individual or organization responsible for officially endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this plan definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of plan definitions that are appropriate for use versus not.
  final bool? experimental;

  /// What the plan is trying to accomplish
  /// Goals that describe what the activities within the plan are intended to achieve. For example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
  final List<PlanDefinitionGoal>? goal;

  /// Additional identifier for the plan definition
  /// A formal identifier that is used to identify this plan definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this plan definition outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Intended jurisdiction for plan definition (if applicable)
  /// A legal or geographic region in which the plan definition is intended to be used.
  /// It may be possible for the plan definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// When the plan definition was last reviewed
  /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
  /// If specified, this date follows the original approval date.
  final String? lastReviewDate;

  /// Logic used by the plan definition
  /// A reference to a Library resource containing any formal logic used by the plan definition.
  final List<String>? fhirLibrary;

  /// Name for this plan definition (computer friendly)
  /// A natural language name identifying the plan definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the plan definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the plan definition is the organization or individual primarily responsible for the maintenance and upkeep of the plan definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the plan definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this plan definition is defined
  /// Explanation of why this plan definition is needed and why it has been designed as it has.
  /// This element does not describe the usage of the plan definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this plan definition.
  final String? purpose;

  /// Additional documentation, citations
  /// Related artifacts such as additional documentation, justification, or bibliographic references.
  /// Each related artifact is either an attachment, or a reference to another resource, but not both.
  final List<RelatedArtifact>? relatedArtifact;

  /// Who reviewed the content
  /// An individual or organization primarily responsible for review of some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// The status of this plan definition. Enables tracking the life-cycle of the content.
  /// Allows filtering of plan definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Type of individual the plan definition is focused on
  /// A code or group definition that describes the intended subject of the plan definition.
  final CodeableConcept? subjectCodeableConcept;

  /// Type of individual the plan definition is focused on
  /// A code or group definition that describes the intended subject of the plan definition.
  final Reference? subjectReference;

  /// Subordinate title of the plan definition
  /// An explanatory or alternate title for the plan definition giving additional information about its content.
  final String? subtitle;

  /// Name for this plan definition (human friendly)
  /// A short, descriptive, user-friendly title for the plan definition.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// E.g. Education, Treatment, Assessment
  /// Descriptive topics related to the content of the plan definition. Topics provide a high-level categorization of the definition that can be useful for filtering and searching.
  final List<CodeableConcept>? topic;

  /// order-set | clinical-protocol | eca-rule | workflow-definition
  /// A high-level category for the plan definition that distinguishes the kinds of systems that would be interested in the plan definition.
  final CodeableConcept? type;

  /// Canonical identifier for this plan definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this plan definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this plan definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the plan definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// Describes the clinical usage of the plan
  /// A detailed description of how the plan definition is used from a clinical perspective.
  final String? usage;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate plan definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the plan definition
  /// The identifier that is used to identify this version of the plan definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the plan definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
  /// There may be different plan definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the plan definition with the format [url]|[version].
  final String? version;
  PlanDefinition({
    this.action,
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
    this.experimental,
    super.fhirExtension,
    this.goal,
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
    required this.status,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subtitle,
    super.text,
    this.title,
    this.topic,
    this.type,
    this.url,
    this.usage,
    this.useContext,
    this.version,
  });

  @override
  factory PlanDefinition.fromJson(Map<String, dynamic> json) {
    return PlanDefinition(
      action: (json['action'] as List<dynamic>?)
          ?.map((e) =>
              PlanDefinitionAction.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      approvalDate: json['approvalDate'] as String?,
      author: (json['author'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      goal: (json['goal'] as List<dynamic>?)
          ?.map((e) =>
              PlanDefinitionGoal.fromJson((e as Map).cast<String, dynamic>()))
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      url: json['url'] as String?,
      usage: json['usage'] as String?,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map(
              (e) => UsageContext.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'action': action?.map((e) => e.toJson()).toList(),
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
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'goal': goal?.map((e) => e.toJson()).toList(),
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
        'status': status,
        'subjectCodeableConcept': subjectCodeableConcept?.toJson(),
        'subjectReference': subjectReference?.toJson(),
        'subtitle': subtitle,
        'text': text?.toJson(),
        'title': title,
        'topic': topic?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'url': url,
        'usage': usage,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  PlanDefinition copyWith({
    List<PlanDefinitionAction>? action,
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
    bool? experimental,
    List<Extension>? fhirExtension,
    List<PlanDefinitionGoal>? goal,
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
    return PlanDefinition(
      action: action ?? this.action,
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
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      goal: goal ?? this.goal,
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

part of '../fhir_dart.dart';

/// This resource allows for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context.
class ActivityDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'ActivityDefinition';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// When the activity definition was approved by publisher
  /// The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
  /// The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
  final String? approvalDate;

  /// Who authored the content
  /// An individiual or organization primarily involved in the creation and maintenance of the content.
  final List<ContactDetail>? author;

  /// What part of body to perform on
  /// Indicates the sites on the subject's body where the procedure should be performed (I.e. the target sites).
  /// Only used if not implicit in the code found in ServiceRequest.type.
  final List<CodeableConcept>? bodySite;

  /// Detail type of activity
  /// Detailed description of the type of activity; e.g. What lab test, what procedure, what kind of encounter.
  /// Tends to be less relevant for activities involving particular products.
  final CodeableConcept? code;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the activity definition and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the activity definition.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the activity definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the activity definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the activity definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the activity definition
  /// A free text natural language description of the activity definition from a consumer's perspective.
  /// This description can be used to capture details such as why the activity definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the activity definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the activity definition is presumed to be the predominant language in the place the activity definition was created).
  final String? description;

  /// True if the activity should not be performed
  /// Set this to true if the definition is to indicate that a particular activity should NOT be performed. If true, this element should be interpreted to reinforce a negative coding. For example NPO as a code with a doNotPerform of true would still indicate to NOT perform the action.
  /// This element is not intended to be used to communicate a decision support response to cancel an order in progress. That should be done with the "remove" type of a PlanDefinition or RequestGroup.
  final bool? doNotPerform;

  /// Detailed dosage instructions
  /// Provides detailed dosage instructions in the same way that they are described for MedicationRequest resources.
  /// If a dosage instruction is used, the definition should not specify timing or quantity.
  final List<Dosage>? dosage;

  /// Dynamic aspects of the definition
  /// Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an expression that calculated the weight, and the path on the request resource that would contain the result.
  /// Dynamic values are applied in the order in which they are defined in the ActivityDefinition. Note that if both a transform and dynamic values are specified, the dynamic values will be applied to the result of the transform.
  final List<ActivityDefinitionDynamicValue>? dynamicValue;

  /// Who edited the content
  /// An individual or organization primarily responsible for internal coherence of the content.
  final List<ContactDetail>? editor;

  /// When the activity definition is expected to be used
  /// The period during which the activity definition content was or is planned to be in active use.
  /// The effective period for a activity definition  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;

  /// Who endorsed the content
  /// An individual or organization responsible for officially endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this activity definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of activity definitions that are appropriate for use versus not.
  final bool? experimental;

  /// Additional identifier for the activity definition
  /// A formal identifier that is used to identify this activity definition when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this activity definition outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// Indicates the level of authority/intentionality associated with the activity and where the request should fit into the workflow chain.
  final String?
      intent; // Possible values: 'proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option'
  /// Intended jurisdiction for activity definition (if applicable)
  /// A legal or geographic region in which the activity definition is intended to be used.
  /// It may be possible for the activity definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Kind of resource
  /// A description of the kind of resource the activity definition is representing. For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest. Typically, but not always, this is a Request resource.
  /// May determine what types of extensions are permitted.
  final String?
      kind; // Possible values: 'Appointment', 'AppointmentResponse', 'CarePlan', 'Claim', 'CommunicationRequest', 'Contract', 'DeviceRequest', 'EnrollmentRequest', 'ImmunizationRecommendation', 'MedicationRequest', 'NutritionOrder', 'ServiceRequest', 'SupplyRequest', 'Task', 'VisionPrescription'
  /// When the activity definition was last reviewed
  /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
  /// If specified, this date follows the original approval date.
  final String? lastReviewDate;

  /// Logic used by the activity definition
  /// A reference to a Library resource containing any formal logic used by the activity definition.
  final List<String>? fhirLibrary;

  /// Where it should happen
  /// Identifies the facility where the activity will occur; e.g. home, hospital, specific clinic, etc.
  /// May reference a specific clinical location or may just identify a type of location.
  final Reference? location;

  /// Name for this activity definition (computer friendly)
  /// A natural language name identifying the activity definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// What observations are required to perform this action
  /// Defines observation requirements for the action to be performed, such as body weight or surface area.
  final List<Reference>? observationRequirement;

  /// What observations must be produced by this action
  /// Defines the observations that are expected to be produced by the action.
  final List<Reference>? observationResultRequirement;

  /// Who should participate in the action
  /// Indicates who should participate in performing the action described.
  final List<ActivityDefinitionParticipant>? participant;

  /// Indicates how quickly the activity  should be addressed with respect to other requests.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// What's administered/supplied
  /// Identifies the food, drug or other product being consumed or supplied in the activity.
  final CodeableConcept? productCodeableConcept;

  /// What's administered/supplied
  /// Identifies the food, drug or other product being consumed or supplied in the activity.
  final Reference? productReference;

  /// What profile the resource needs to conform to
  /// A profile to which the target of the activity definition is expected to conform.
  final String? profile;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the activity definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the activity definition is the organization or individual primarily responsible for the maintenance and upkeep of the activity definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the activity definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this activity definition is defined
  /// Explanation of why this activity definition is needed and why it has been designed as it has.
  /// This element does not describe the usage of the activity definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this activity definition.
  final String? purpose;

  /// How much is administered/consumed/supplied
  /// Identifies the quantity expected to be consumed at once (per dose, per meal, etc.).
  final Quantity? quantity;

  /// Additional documentation, citations, etc.
  /// Related artifacts such as additional documentation, justification, or bibliographic references.
  /// Each related artifact is either an attachment, or a reference to another resource, but not both.
  final List<RelatedArtifact>? relatedArtifact;

  /// Who reviewed the content
  /// An individual or organization primarily responsible for review of some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// What specimens are required to perform this action
  /// Defines specimen requirements for the action to be performed, such as required specimens for a lab test.
  final List<Reference>? specimenRequirement;

  /// The status of this activity definition. Enables tracking the life-cycle of the content.
  /// Allows filtering of activity definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Type of individual the activity definition is intended for
  /// A code or group definition that describes the intended subject of the activity being defined.
  final CodeableConcept? subjectCodeableConcept;

  /// Type of individual the activity definition is intended for
  /// A code or group definition that describes the intended subject of the activity being defined.
  final Reference? subjectReference;

  /// Subordinate title of the activity definition
  /// An explanatory or alternate title for the activity definition giving additional information about its content.
  final String? subtitle;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final Age? timingAge;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final String? timingDateTime;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final Duration? timingDuration;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final Period? timingPeriod;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final Range? timingRange;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final Timing? timingTiming;

  /// Name for this activity definition (human friendly)
  /// A short, descriptive, user-friendly title for the activity definition.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// E.g. Education, Treatment, Assessment, etc.
  /// Descriptive topics related to the content of the activity. Topics provide a high-level categorization of the activity that can be useful for filtering and searching.
  final List<CodeableConcept>? topic;

  /// Transform to apply the template
  /// A reference to a StructureMap resource that defines a transform that can be executed to produce the intent resource using the ActivityDefinition instance as the input.
  /// Note that if both a transform and dynamic values are specified, the dynamic values will be applied to the result of the transform.
  final String? transform;

  /// Canonical identifier for this activity definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this activity definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this activity definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the activity definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// Describes the clinical usage of the activity definition
  /// A detailed description of how the activity definition is used from a clinical perspective.
  final String? usage;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate activity definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the activity definition
  /// The identifier that is used to identify this version of the activity definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the activity definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active assets.
  /// There may be different activity definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the activity definition with the format [url]|[version].
  final String? version;
  ActivityDefinition({
    this.approvalDate,
    this.author,
    this.bodySite,
    this.code,
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.description,
    this.doNotPerform,
    this.dosage,
    this.dynamicValue,
    this.editor,
    this.effectivePeriod,
    this.endorser,
    this.experimental,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.intent,
    this.jurisdiction,
    this.kind,
    super.language,
    this.lastReviewDate,
    this.fhirLibrary,
    this.location,
    super.meta,
    super.modifierExtension,
    this.name,
    this.observationRequirement,
    this.observationResultRequirement,
    this.participant,
    this.priority,
    this.productCodeableConcept,
    this.productReference,
    this.profile,
    this.publisher,
    this.purpose,
    this.quantity,
    this.relatedArtifact,
    this.reviewer,
    this.specimenRequirement,
    required this.status,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subtitle,
    super.text,
    this.timingAge,
    this.timingDateTime,
    this.timingDuration,
    this.timingPeriod,
    this.timingRange,
    this.timingTiming,
    this.title,
    this.topic,
    this.transform,
    this.url,
    this.usage,
    this.useContext,
    this.version,
  });

  @override
  factory ActivityDefinition.fromJson(Map<String, dynamic> json) {
    return ActivityDefinition(
      approvalDate: json['approvalDate'] as String?,
      author: (json['author'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
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
      doNotPerform: json['doNotPerform'] as bool?,
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map((e) => Dosage.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map((e) => ActivityDefinitionDynamicValue.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
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
      intent: json['intent'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      kind: json['kind'] as String?,
      language: json['language'] as String?,
      lastReviewDate: json['lastReviewDate'] as String?,
      fhirLibrary:
          (json['library'] as List<dynamic>?)?.map((e) => e as String).toList(),
      location: json['location'] != null
          ? Reference.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      observationRequirement: (json['observationRequirement'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      observationResultRequirement: (json['observationResultRequirement']
              as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) => ActivityDefinitionParticipant.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      priority: json['priority'] as String?,
      productCodeableConcept: json['productCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['productCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      productReference: json['productReference'] != null
          ? Reference.fromJson(
              (json['productReference'] as Map).cast<String, dynamic>())
          : null,
      profile: json['profile'] as String?,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      quantity: json['quantity'] != null
          ? Quantity.fromJson((json['quantity'] as Map).cast<String, dynamic>())
          : null,
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map((e) =>
              RelatedArtifact.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      specimenRequirement: (json['specimenRequirement'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
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
      timingAge: json['timingAge'] != null
          ? Age.fromJson((json['timingAge'] as Map).cast<String, dynamic>())
          : null,
      timingDateTime: json['timingDateTime'] as String?,
      timingDuration: json['timingDuration'] != null
          ? Duration.fromJson(
              (json['timingDuration'] as Map).cast<String, dynamic>())
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              (json['timingPeriod'] as Map).cast<String, dynamic>())
          : null,
      timingRange: json['timingRange'] != null
          ? Range.fromJson((json['timingRange'] as Map).cast<String, dynamic>())
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              (json['timingTiming'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      transform: json['transform'] as String?,
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
        'approvalDate': approvalDate,
        'author': author?.map((e) => e.toJson()).toList(),
        'bodySite': bodySite?.map((e) => e.toJson()).toList(),
        'code': code?.toJson(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'date': date,
        'description': description,
        'doNotPerform': doNotPerform,
        'dosage': dosage?.map((e) => e.toJson()).toList(),
        'dynamicValue': dynamicValue?.map((e) => e.toJson()).toList(),
        'editor': editor?.map((e) => e.toJson()).toList(),
        'effectivePeriod': effectivePeriod?.toJson(),
        'endorser': endorser?.map((e) => e.toJson()).toList(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'intent': intent,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'kind': kind,
        'language': language,
        'lastReviewDate': lastReviewDate,
        'library': fhirLibrary?.map((e) => e).toList(),
        'location': location?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'observationRequirement':
            observationRequirement?.map((e) => e.toJson()).toList(),
        'observationResultRequirement':
            observationResultRequirement?.map((e) => e.toJson()).toList(),
        'participant': participant?.map((e) => e.toJson()).toList(),
        'priority': priority,
        'productCodeableConcept': productCodeableConcept?.toJson(),
        'productReference': productReference?.toJson(),
        'profile': profile,
        'publisher': publisher,
        'purpose': purpose,
        'quantity': quantity?.toJson(),
        'relatedArtifact': relatedArtifact?.map((e) => e.toJson()).toList(),
        'reviewer': reviewer?.map((e) => e.toJson()).toList(),
        'specimenRequirement':
            specimenRequirement?.map((e) => e.toJson()).toList(),
        'status': status,
        'subjectCodeableConcept': subjectCodeableConcept?.toJson(),
        'subjectReference': subjectReference?.toJson(),
        'subtitle': subtitle,
        'text': text?.toJson(),
        'timingAge': timingAge?.toJson(),
        'timingDateTime': timingDateTime,
        'timingDuration': timingDuration?.toJson(),
        'timingPeriod': timingPeriod?.toJson(),
        'timingRange': timingRange?.toJson(),
        'timingTiming': timingTiming?.toJson(),
        'title': title,
        'topic': topic?.map((e) => e.toJson()).toList(),
        'transform': transform,
        'url': url,
        'usage': usage,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  ActivityDefinition copyWith({
    String? approvalDate,
    List<ContactDetail>? author,
    List<CodeableConcept>? bodySite,
    CodeableConcept? code,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    String? description,
    bool? doNotPerform,
    List<Dosage>? dosage,
    List<ActivityDefinitionDynamicValue>? dynamicValue,
    List<ContactDetail>? editor,
    Period? effectivePeriod,
    List<ContactDetail>? endorser,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? intent,
    List<CodeableConcept>? jurisdiction,
    String? kind,
    String? language,
    String? lastReviewDate,
    List<String>? fhirLibrary,
    Reference? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<Reference>? observationRequirement,
    List<Reference>? observationResultRequirement,
    List<ActivityDefinitionParticipant>? participant,
    String? priority,
    CodeableConcept? productCodeableConcept,
    Reference? productReference,
    String? profile,
    String? publisher,
    String? purpose,
    Quantity? quantity,
    List<RelatedArtifact>? relatedArtifact,
    List<ContactDetail>? reviewer,
    List<Reference>? specimenRequirement,
    String? status,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    String? subtitle,
    Narrative? text,
    Age? timingAge,
    String? timingDateTime,
    Duration? timingDuration,
    Period? timingPeriod,
    Range? timingRange,
    Timing? timingTiming,
    String? title,
    List<CodeableConcept>? topic,
    String? transform,
    String? url,
    String? usage,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return ActivityDefinition(
      approvalDate: approvalDate ?? this.approvalDate,
      author: author ?? this.author,
      bodySite: bodySite ?? this.bodySite,
      code: code ?? this.code,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      description: description ?? this.description,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      dosage: dosage ?? this.dosage,
      dynamicValue: dynamicValue ?? this.dynamicValue,
      editor: editor ?? this.editor,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      endorser: endorser ?? this.endorser,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      intent: intent ?? this.intent,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      kind: kind ?? this.kind,
      language: language ?? this.language,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      fhirLibrary: fhirLibrary ?? this.fhirLibrary,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      observationRequirement:
          observationRequirement ?? this.observationRequirement,
      observationResultRequirement:
          observationResultRequirement ?? this.observationResultRequirement,
      participant: participant ?? this.participant,
      priority: priority ?? this.priority,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      productReference: productReference ?? this.productReference,
      profile: profile ?? this.profile,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      quantity: quantity ?? this.quantity,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      reviewer: reviewer ?? this.reviewer,
      specimenRequirement: specimenRequirement ?? this.specimenRequirement,
      status: status ?? this.status,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subtitle: subtitle ?? this.subtitle,
      text: text ?? this.text,
      timingAge: timingAge ?? this.timingAge,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDuration: timingDuration ?? this.timingDuration,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingRange: timingRange ?? this.timingRange,
      timingTiming: timingTiming ?? this.timingTiming,
      title: title ?? this.title,
      topic: topic ?? this.topic,
      transform: transform ?? this.transform,
      url: url ?? this.url,
      usage: usage ?? this.usage,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

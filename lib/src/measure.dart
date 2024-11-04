part of '../fhir_dart.dart';

/// The Measure resource provides the definition of a quality measure.
class Measure extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Measure';

  /// When the measure was approved by publisher
  /// The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
  /// The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
  final String? approvalDate;

  /// Who authored the content
  /// An individiual or organization primarily involved in the creation and maintenance of the content.
  final List<ContactDetail>? author;

  /// Summary of clinical guidelines
  /// Provides a summary of relevant clinical guidelines or other clinical recommendations supporting the measure.
  final String? clinicalRecommendationStatement;

  /// opportunity | all-or-nothing | linear | weighted
  /// If this is a composite measure, the scoring method used to combine the component measures to determine the composite score.
  final CodeableConcept? compositeScoring;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Use and/or publishing restrictions
  /// A copyright statement relating to the measure and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the measure.
  final String? copyright;

  /// Date last changed
  /// The date  (and optionally time) when the measure was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the measure changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the measure. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Defined terms used in the measure documentation
  /// Provides a description of an individual term used within the measure.
  final List<String>? definition;

  /// Natural language description of the measure
  /// A free text natural language description of the measure from a consumer's perspective.
  /// This description can be used to capture details such as why the measure was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the measure as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the measure is presumed to be the predominant language in the place the measure was created).
  final String? description;

  /// Disclaimer for use of the measure or its referenced content
  /// Notices and disclaimers regarding the use of the measure or related to intellectual property (such as code systems) referenced by the measure.
  final String? disclaimer;

  /// Who edited the content
  /// An individual or organization primarily responsible for internal coherence of the content.
  final List<ContactDetail>? editor;

  /// When the measure is expected to be used
  /// The period during which the measure content was or is planned to be in active use.
  /// The effective period for a measure  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
  final Period? effectivePeriod;

  /// Who endorsed the content
  /// An individual or organization responsible for officially endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this measure is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of measures that are appropriate for use versus not.
  final bool? experimental;

  /// Population criteria group
  /// A group of population criteria for the measure.
  final List<MeasureGroup>? group;

  /// Additional guidance for implementers
  /// Additional guidance for the measure including how it can be used in a clinical context, and the intent of the measure.
  final String? guidance;

  /// Additional identifier for the measure
  /// A formal identifier that is used to identify this measure when it is represented in other formats, or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this measure outside of FHIR, where it is not possible to use the logical URI.
  final List<Identifier>? identifier;

  /// increase | decrease
  /// Information on whether an increase or decrease in score is the preferred result (e.g., a higher score indicates better quality OR a lower score indicates better quality OR quality is within a range).
  final CodeableConcept? improvementNotation;

  /// Intended jurisdiction for measure (if applicable)
  /// A legal or geographic region in which the measure is intended to be used.
  /// It may be possible for the measure to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// When the measure was last reviewed
  /// The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
  /// If specified, this date follows the original approval date.
  final String? lastReviewDate;

  /// Logic used by the measure
  /// A reference to a Library resource containing the formal logic used by the measure.
  final List<String>? fhirLibrary;

  /// Name for this measure (computer friendly)
  /// A natural language name identifying the measure. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String? name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the measure.
  /// Usually an organization but may be an individual. The publisher (or steward) of the measure is the organization or individual primarily responsible for the maintenance and upkeep of the measure. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the measure. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this measure is defined
  /// Explanation of why this measure is needed and why it has been designed as it has.
  /// This element does not describe the usage of the measure. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this measure.
  final String? purpose;

  /// How is rate aggregation performed for this measure
  /// Describes how to combine the information calculated, based on logic in each of several populations, into one summarized result.
  /// The measure rate for an organization or clinician is based upon the entities’ aggregate data and summarizes the performance of the entity over a given time period (e.g., monthly, quarterly, yearly). The aggregated data are derived from the results of a specific measure algorithm and, if appropriate, the application of specific risk adjustment models.  Can also be used to describe how to risk adjust the data based on supplemental data elements described in the eMeasure (e.g., pneumonia hospital measures antibiotic selection in the ICU versus non-ICU and then the roll-up of the two). This could be applied to aggregated cohort measure definitions (e.g., CDC's aggregate reporting for TB at the state level).
  final String? rateAggregation;

  /// Detailed description of why the measure exists
  /// Provides a succinct statement of the need for the measure. Usually includes statements pertaining to importance criterion: impact, gap in care, and evidence.
  final String? rationale;

  /// Additional documentation, citations, etc.
  /// Related artifacts such as additional documentation, justification, or bibliographic references.
  /// Each related artifact is either an attachment, or a reference to another resource, but not both.
  final List<RelatedArtifact>? relatedArtifact;

  /// Who reviewed the content
  /// An individual or organization primarily responsible for review of some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// How risk adjustment is applied for this measure
  /// A description of the risk adjustment factors that may impact the resulting score for the measure and how they may be accounted for when computing and reporting measure results.
  /// Describes the method of adjusting for clinical severity and conditions present at the start of care that can influence patient outcomes for making valid comparisons of outcome measures across providers. Indicates whether a measure is subject to the statistical process for reducing, removing, or clarifying the influences of confounding factors to allow for more useful comparisons.
  final String? riskAdjustment;

  /// proportion | ratio | continuous-variable | cohort
  /// Indicates how the calculation is performed for the measure, including proportion, ratio, continuous-variable, and cohort. The value set is extensible, allowing additional measure scoring types to be represented.
  final CodeableConcept? scoring;

  /// The status of this measure. Enables tracking the life-cycle of the content.
  /// Allows filtering of measures that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
  /// The intended subjects for the measure. If this element is not provided, a Patient subject is assumed, but the subject of the measure can be anything.
  /// The subject of the measure is critical in interpreting the criteria definitions, as the logic in the measures is evaluated with respect to a particular subject. This corresponds roughly to the notion of a Compartment in that it limits what content is available based on its relationship to the subject. In CQL, this corresponds to the context declaration.
  final CodeableConcept? subjectCodeableConcept;

  /// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
  /// The intended subjects for the measure. If this element is not provided, a Patient subject is assumed, but the subject of the measure can be anything.
  /// The subject of the measure is critical in interpreting the criteria definitions, as the logic in the measures is evaluated with respect to a particular subject. This corresponds roughly to the notion of a Compartment in that it limits what content is available based on its relationship to the subject. In CQL, this corresponds to the context declaration.
  final Reference? subjectReference;

  /// Subordinate title of the measure
  /// An explanatory or alternate title for the measure giving additional information about its content.
  final String? subtitle;

  /// What other data should be reported with the measure
  /// The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a referenced library, or a valid FHIR Resource Path.
  /// Note that supplemental data are reported as observations for each patient and included in the evaluatedResources bundle. See the MeasureReport resource or the Quality Reporting topic for more information.
  final List<MeasureSupplementalData>? supplementalData;

  /// Name for this measure (human friendly)
  /// A short, descriptive, user-friendly title for the measure.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// The category of the measure, such as Education, Treatment, Assessment, etc.
  /// Descriptive topics related to the content of the measure. Topics provide a high-level categorization grouping types of measures that can be useful for filtering and searching.
  final List<CodeableConcept>? topic;

  /// process | outcome | structure | patient-reported-outcome | composite
  /// Indicates whether the measure is used to examine a process, an outcome over time, a patient-reported outcome, or a structure measure such as utilization.
  final List<CodeableConcept>? type;

  /// Canonical identifier for this measure, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this measure when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this measure is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the measure is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// Describes the clinical usage of the measure
  /// A detailed description, from a clinical perspective, of how the measure is used.
  final String? usage;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate measure instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the measure
  /// The identifier that is used to identify this version of the measure when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the measure author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts.
  /// There may be different measure instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the measure with the format [url]|[version].
  final String? version;
  Measure({
    this.approvalDate,
    this.author,
    this.clinicalRecommendationStatement,
    this.compositeScoring,
    this.contact,
    super.contained,
    this.copyright,
    this.date,
    this.definition,
    this.description,
    this.disclaimer,
    this.editor,
    this.effectivePeriod,
    this.endorser,
    this.experimental,
    super.fhirExtension,
    this.group,
    this.guidance,
    super.id,
    this.identifier,
    super.implicitRules,
    this.improvementNotation,
    this.jurisdiction,
    super.language,
    this.lastReviewDate,
    this.fhirLibrary,
    super.meta,
    super.modifierExtension,
    this.name,
    this.publisher,
    this.purpose,
    this.rateAggregation,
    this.rationale,
    this.relatedArtifact,
    this.reviewer,
    this.riskAdjustment,
    this.scoring,
    required this.status,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subtitle,
    this.supplementalData,
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
  factory Measure.fromJson(Map<String, dynamic> json) {
    return Measure(
      approvalDate: json['approvalDate'] as String?,
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      clinicalRecommendationStatement:
          json['clinicalRecommendationStatement'] as String?,
      compositeScoring: json['compositeScoring'] != null
          ? CodeableConcept.fromJson(
              json['compositeScoring'] as Map<String, dynamic>)
          : null,
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyright: json['copyright'] as String?,
      date: json['date'] as String?,
      definition: (json['definition'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      disclaimer: json['disclaimer'] as String?,
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
      group: (json['group'] as List<dynamic>?)
          ?.map((e) => MeasureGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      guidance: json['guidance'] as String?,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      improvementNotation: json['improvementNotation'] != null
          ? CodeableConcept.fromJson(
              json['improvementNotation'] as Map<String, dynamic>)
          : null,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      lastReviewDate: json['lastReviewDate'] as String?,
      fhirLibrary:
          (json['library'] as List<dynamic>?)?.map((e) => e as String).toList(),
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      rateAggregation: json['rateAggregation'] as String?,
      rationale: json['rationale'] as String?,
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      riskAdjustment: json['riskAdjustment'] as String?,
      scoring: json['scoring'] != null
          ? CodeableConcept.fromJson(json['scoring'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>)
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(json['subjectReference'] as Map<String, dynamic>)
          : null,
      subtitle: json['subtitle'] as String?,
      supplementalData: (json['supplementalData'] as List<dynamic>?)
          ?.map((e) =>
              MeasureSupplementalData.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
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
        'clinicalRecommendationStatement': clinicalRecommendationStatement,
        'compositeScoring': compositeScoring?.toJson(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copyright': copyright,
        'date': date,
        'definition': definition?.map((e) => e).toList(),
        'description': description,
        'disclaimer': disclaimer,
        'editor': editor?.map((e) => e.toJson()).toList(),
        'effectivePeriod': effectivePeriod?.toJson(),
        'endorser': endorser?.map((e) => e.toJson()).toList(),
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'group': group?.map((e) => e.toJson()).toList(),
        'guidance': guidance,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'improvementNotation': improvementNotation?.toJson(),
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'lastReviewDate': lastReviewDate,
        'library': fhirLibrary?.map((e) => e).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'rateAggregation': rateAggregation,
        'rationale': rationale,
        'relatedArtifact': relatedArtifact?.map((e) => e.toJson()).toList(),
        'reviewer': reviewer?.map((e) => e.toJson()).toList(),
        'riskAdjustment': riskAdjustment,
        'scoring': scoring?.toJson(),
        'status': status,
        'subjectCodeableConcept': subjectCodeableConcept?.toJson(),
        'subjectReference': subjectReference?.toJson(),
        'subtitle': subtitle,
        'supplementalData': supplementalData?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'title': title,
        'topic': topic?.map((e) => e.toJson()).toList(),
        'type': type?.map((e) => e.toJson()).toList(),
        'url': url,
        'usage': usage,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  Measure copyWith({
    String? approvalDate,
    List<ContactDetail>? author,
    String? clinicalRecommendationStatement,
    CodeableConcept? compositeScoring,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? copyright,
    String? date,
    List<String>? definition,
    String? description,
    String? disclaimer,
    List<ContactDetail>? editor,
    Period? effectivePeriod,
    List<ContactDetail>? endorser,
    bool? experimental,
    List<Extension>? fhirExtension,
    List<MeasureGroup>? group,
    String? guidance,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    CodeableConcept? improvementNotation,
    List<CodeableConcept>? jurisdiction,
    String? language,
    String? lastReviewDate,
    List<String>? fhirLibrary,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? publisher,
    String? purpose,
    String? rateAggregation,
    String? rationale,
    List<RelatedArtifact>? relatedArtifact,
    List<ContactDetail>? reviewer,
    String? riskAdjustment,
    CodeableConcept? scoring,
    String? status,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    String? subtitle,
    List<MeasureSupplementalData>? supplementalData,
    Narrative? text,
    String? title,
    List<CodeableConcept>? topic,
    List<CodeableConcept>? type,
    String? url,
    String? usage,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return Measure(
      approvalDate: approvalDate ?? this.approvalDate,
      author: author ?? this.author,
      clinicalRecommendationStatement: clinicalRecommendationStatement ??
          this.clinicalRecommendationStatement,
      compositeScoring: compositeScoring ?? this.compositeScoring,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      copyright: copyright ?? this.copyright,
      date: date ?? this.date,
      definition: definition ?? this.definition,
      description: description ?? this.description,
      disclaimer: disclaimer ?? this.disclaimer,
      editor: editor ?? this.editor,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      endorser: endorser ?? this.endorser,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      group: group ?? this.group,
      guidance: guidance ?? this.guidance,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      improvementNotation: improvementNotation ?? this.improvementNotation,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      fhirLibrary: fhirLibrary ?? this.fhirLibrary,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      rateAggregation: rateAggregation ?? this.rateAggregation,
      rationale: rationale ?? this.rationale,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      reviewer: reviewer ?? this.reviewer,
      riskAdjustment: riskAdjustment ?? this.riskAdjustment,
      scoring: scoring ?? this.scoring,
      status: status ?? this.status,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subtitle: subtitle ?? this.subtitle,
      supplementalData: supplementalData ?? this.supplementalData,
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

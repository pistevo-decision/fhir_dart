part of '../fhir_dart.dart';

/// A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
class GraphDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'GraphDefinition';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Date last changed
  /// The date  (and optionally time) when the graph definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the graph definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the graph definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the graph definition
  /// A free text natural language description of the graph definition from a consumer's perspective.
  /// This description can be used to capture details such as why the graph definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the graph definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the graph definition is presumed to be the predominant language in the place the graph definition was created).
  final String? description;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this graph definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of graph definitions that are appropriate for use versus not.
  final bool? experimental;

  /// Intended jurisdiction for graph definition (if applicable)
  /// A legal or geographic region in which the graph definition is intended to be used.
  /// It may be possible for the graph definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// Links this graph makes rules about.
  final List<GraphDefinitionLink>? link;

  /// Name for this graph definition (computer friendly)
  /// A natural language name identifying the graph definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String name;

  /// Profile on base resource
  /// The profile that describes the use of the base resource.
  /// The code does not include the '$' prefix that is always included in the URL when the operation is invoked.
  final String? profile;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the graph definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the graph definition is the organization or individual primarily responsible for the maintenance and upkeep of the graph definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the graph definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this graph definition is defined
  /// Explanation of why this graph definition is needed and why it has been designed as it has.
  /// This element does not describe the usage of the graph definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this graph definition.
  final String? purpose;

  /// Type of resource at which the graph starts
  /// The type of FHIR resource at which instances of this graph start.
  final String
      start; // Possible values: 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  /// The status of this graph definition. Enables tracking the life-cycle of the content.
  /// Allows filtering of graph definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Canonical identifier for this graph definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this graph definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this graph definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the graph definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate graph definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the graph definition
  /// The identifier that is used to identify this version of the graph definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the graph definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different graph definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the graph definition with the format [url]|[version].
  final String? version;
  GraphDefinition({
    this.contact,
    super.contained,
    this.date,
    this.description,
    this.experimental,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    this.link,
    super.meta,
    super.modifierExtension,
    required this.name,
    this.profile,
    this.publisher,
    this.purpose,
    required this.start,
    required this.status,
    super.text,
    this.url,
    this.useContext,
    this.version,
  });

  @override
  factory GraphDefinition.fromJson(Map<String, dynamic> json) {
    return GraphDefinition(
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String?,
      description: json['description'] as String?,
      experimental: json['experimental'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      link: (json['link'] as List<dynamic>?)
          ?.map((e) =>
              GraphDefinitionLink.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      profile: json['profile'] as String?,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      start: json['start'] as String,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
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
        'resourceType': fhirResourceType,
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'description': description,
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'link': link?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'profile': profile,
        'publisher': publisher,
        'purpose': purpose,
        'start': start,
        'status': status,
        'text': text?.toJson(),
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  GraphDefinition copyWith({
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? date,
    String? description,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    List<GraphDefinitionLink>? link,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? profile,
    String? publisher,
    String? purpose,
    String? start,
    String? status,
    Narrative? text,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return GraphDefinition(
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      description: description ?? this.description,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      link: link ?? this.link,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      profile: profile ?? this.profile,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      start: start ?? this.start,
      status: status ?? this.status,
      text: text ?? this.text,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

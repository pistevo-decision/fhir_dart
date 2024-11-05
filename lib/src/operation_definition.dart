part of '../fhir_dart.dart';

/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
class OperationDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'OperationDefinition';

  /// Whether content is changed by the operation
  /// Whether the operation affects state. Side effects such as producing audit trail entries do not count as 'affecting  state'.
  /// What http methods can be used for the operation depends on the .affectsState value and whether the input parameters are primitive or complex:
  /// 1. Servers SHALL support POST method for all operations.
  /// 2. Servers SHALL support GET method if all the parameters for the operation are primitive or there are no parameters and the operation has affectsState = false.
  final bool? affectsState;

  /// Marks this as a profile of the base
  /// Indicates that this operation definition is a constraining profile on the base.
  /// A constrained profile can make optional parameters required or not used and clarify documentation.
  final String? base;

  /// Name used to invoke the operation
  /// The name used to invoke the operation.
  final String code;

  /// Additional information about use
  /// Additional information about how to use this operation or named query.
  final String? comment;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Date last changed
  /// The date  (and optionally time) when the operation definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the operation definition changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the operation definition. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Natural language description of the operation definition
  /// A free text natural language description of the operation definition from a consumer's perspective.
  /// This description can be used to capture details such as why the operation definition was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the operation definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the operation definition is presumed to be the predominant language in the place the operation definition was created).
  final String? description;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this operation definition is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of operation definitions that are appropriate for use versus not.
  final bool? experimental;

  /// Validation information for in parameters
  /// Additional validation information for the in parameters - a single profile that covers all the parameters. The profile is a constraint on the parameters resource as a whole.
  /// If present the profile shall not conflict with what is specified in the parameters in the operation definition (max/min etc.), though it may provide additional constraints. The constraints expressed in the profile apply whether the operation is invoked by a POST wih parameters or not.
  final String? inputProfile;

  /// Invoke on an instance?
  /// Indicates whether this operation can be invoked on a particular instance of one of the given types.
  final bool instance;

  /// Intended jurisdiction for operation definition (if applicable)
  /// A legal or geographic region in which the operation definition is intended to be used.
  /// It may be possible for the operation definition to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// operation | query
  /// Whether this is an operation or a named query.
  /// Named queries are invoked differently, and have different capabilities.
  final String kind; // Possible values: 'operation', 'query'
  /// Name for this operation definition (computer friendly)
  /// A natural language name identifying the operation definition. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String name;

  /// Validation information for out parameters
  /// Additional validation information for the out parameters - a single profile that covers all the parameters. The profile is a constraint on the parameters resource.
  /// If present the profile shall not conflict with what is specified in the parameters in the operation definition (max/min etc.), though it may provide additional constraints. The constraints expressed in the profile apply whether the operation is invoked by a POST wih parameters or not.
  final String? outputProfile;

  /// Define overloaded variants for when  generating code
  /// Defines an appropriate combination of parameters to use when invoking this operation, to help code generators when generating overloaded parameter sets for this operation.
  /// The combinations are suggestions as to which sets of parameters to use together, but the combinations are not intended to be authoritative.
  final List<OperationDefinitionOverload>? overload;

  /// Parameters for the operation/query
  /// The parameters for the operation/query.
  /// Query Definitions only have one output parameter, named "result". This might not be described, but can be to allow a profile to be defined.
  final List<OperationDefinitionParameter>? parameter;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the operation definition.
  /// Usually an organization but may be an individual. The publisher (or steward) of the operation definition is the organization or individual primarily responsible for the maintenance and upkeep of the operation definition. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the operation definition. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this operation definition is defined
  /// Explanation of why this operation definition is needed and why it has been designed as it has.
  /// This element does not describe the usage of the operation definition. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this operation definition.
  final String? purpose;

  /// Types this operation applies to
  /// The types on which this operation can be executed.
  /// If the type is an abstract resource ("Resource" or "DomainResource") then the operation can be invoked on any concrete specialization.
  final List<String>?
      resource; // Possible values: 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  /// The status of this operation definition. Enables tracking the life-cycle of the content.
  /// Allows filtering of operation definitions that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Invoke at the system level?
  /// Indicates whether this operation or named query can be invoked at the system level (e.g. without needing to choose a resource type for the context).
  final bool system;

  /// Name for this operation definition (human friendly)
  /// A short, descriptive, user-friendly title for the operation definition.
  /// This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
  final String? title;

  /// Invoke at the type level?
  /// Indicates whether this operation or named query can be invoked at the resource type level for any given resource type level (e.g. without needing to choose a specific resource id for the context).
  final bool type;

  /// Canonical identifier for this operation definition, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this operation definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this operation definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the operation definition is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String? url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate operation definition instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the operation definition
  /// The identifier that is used to identify this version of the operation definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the operation definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different operation definition instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the operation definition with the format [url]|[version].
  final String? version;
  OperationDefinition({
    this.affectsState,
    this.base,
    required this.code,
    this.comment,
    this.contact,
    super.contained,
    this.date,
    this.description,
    this.experimental,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.inputProfile,
    required this.instance,
    this.jurisdiction,
    required this.kind,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.name,
    this.outputProfile,
    this.overload,
    this.parameter,
    this.publisher,
    this.purpose,
    this.resource,
    required this.status,
    required this.system,
    super.text,
    this.title,
    required this.type,
    this.url,
    this.useContext,
    this.version,
  });

  @override
  factory OperationDefinition.fromJson(Map<String, dynamic> json) {
    return OperationDefinition(
      affectsState: json['affectsState'] as bool?,
      base: json['base'] as String?,
      code: json['code'] as String,
      comment: json['comment'] as String?,
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
      inputProfile: json['inputProfile'] as String?,
      instance: json['instance'] as bool,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      kind: json['kind'] as String,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      outputProfile: json['outputProfile'] as String?,
      overload: (json['overload'] as List<dynamic>?)
          ?.map((e) => OperationDefinitionOverload.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => OperationDefinitionParameter.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String,
      system: json['system'] as bool,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
      type: json['type'] as bool,
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
        'affectsState': affectsState,
        'base': base,
        'code': code,
        'comment': comment,
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'description': description,
        'experimental': experimental,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'inputProfile': inputProfile,
        'instance': instance,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'kind': kind,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'outputProfile': outputProfile,
        'overload': overload?.map((e) => e.toJson()).toList(),
        'parameter': parameter?.map((e) => e.toJson()).toList(),
        'publisher': publisher,
        'purpose': purpose,
        'resource': resource?.map((e) => e).toList(),
        'status': status,
        'system': system,
        'text': text?.toJson(),
        'title': title,
        'type': type,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
      };

  @override
  OperationDefinition copyWith({
    bool? affectsState,
    String? base,
    String? code,
    String? comment,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? date,
    String? description,
    bool? experimental,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? inputProfile,
    bool? instance,
    List<CodeableConcept>? jurisdiction,
    String? kind,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    String? outputProfile,
    List<OperationDefinitionOverload>? overload,
    List<OperationDefinitionParameter>? parameter,
    String? publisher,
    String? purpose,
    List<String>? resource,
    String? status,
    bool? system,
    Narrative? text,
    String? title,
    bool? type,
    String? url,
    List<UsageContext>? useContext,
    String? version,
  }) {
    return OperationDefinition(
      affectsState: affectsState ?? this.affectsState,
      base: base ?? this.base,
      code: code ?? this.code,
      comment: comment ?? this.comment,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      description: description ?? this.description,
      experimental: experimental ?? this.experimental,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      inputProfile: inputProfile ?? this.inputProfile,
      instance: instance ?? this.instance,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      kind: kind ?? this.kind,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      outputProfile: outputProfile ?? this.outputProfile,
      overload: overload ?? this.overload,
      parameter: parameter ?? this.parameter,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      resource: resource ?? this.resource,
      status: status ?? this.status,
      system: system ?? this.system,
      text: text ?? this.text,
      title: title ?? this.title,
      type: type ?? this.type,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
    );
  }
}

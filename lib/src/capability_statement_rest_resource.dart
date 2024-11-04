part of '../fhir_dart.dart';

/// Resource served on the REST interface
/// A specification of the restful capabilities of the solution for a specific resource type.
/// Max of one repetition per resource type.
class CapabilityStatementRestResource extends BackboneElement
    implements FhirResource {
  /// If allows/uses conditional create
  /// A flag that indicates that the server supports conditional create.
  /// Conditional Create is mainly appropriate for interface engine scripts converting from other formats, such as v2.
  final bool? conditionalCreate;

  /// A code that indicates how the server supports conditional delete.
  /// Conditional Delete is mainly appropriate for interface engine scripts converting from other formats, such as v2.
  final String?
      conditionalDelete; // Possible values: 'not-supported', 'single', 'multiple'
  /// A code that indicates how the server supports conditional read.
  /// Conditional Read is mainly appropriate for interface engine scripts converting from other formats, such as v2.
  final String?
      conditionalRead; // Possible values: 'not-supported', 'modified-since', 'not-match', 'full-support'
  /// If allows/uses conditional update
  /// A flag that indicates that the server supports conditional update.
  /// Conditional Update is mainly appropriate for interface engine scripts converting from other formats, such as v2.
  final bool? conditionalUpdate;

  /// Additional information about the use of the resource type
  /// Additional information about the resource type used by the system.
  final String? documentation;

  /// What operations are supported?
  /// Identifies a restful operation supported by the solution.
  /// In general, a Resource will only appear in a CapabilityStatement if the server actually has some capabilities - e.g. there is at least one interaction supported. However interactions can be omitted to support summarization (_summary = true).
  final List<CapabilityStatementRestResourceInteraction>? interaction;

  /// Definition of a resource operation
  /// Definition of an operation or a named query together with its parameters and their meaning and type. Consult the definition of the operation for details about how to invoke the operation, and the parameters.
  /// Operations linked from CapabilityStatement.rest.resource.operation must have OperationDefinition.type = true or OperationDefinition.instance = true.
  /// If an operation that is listed in multiple CapabilityStatement.rest.resource.operation (e.g. for different resource types), then clients should understand that the operation is only supported on the specified resource types, and that may be a subset of those listed in OperationDefinition.resource.
  final List<CapabilityStatementRestResourceOperation>? operation;

  /// Base System profile for all uses of resource
  /// A specification of the profile that describes the solution's overall support for the resource, including any constraints on cardinality, bindings, lengths or other limitations. See further discussion in [Using Profiles](profiling.html#profile-uses).
  /// The profile applies to all  resources of this type - i.e. it is the superset of what is supported by the system.
  final String? profile;

  /// Whether vRead can return past versions
  /// A flag for whether the server is able to return past versions as part of the vRead operation.
  /// It is useful to support the vRead operation for current operations, even if past versions aren't available.
  final bool? readHistory;

  /// A set of flags that defines how references are supported.
  final List<String>?
      referencePolicy; // Possible values: 'literal', 'logical', 'resolves', 'enforced', 'local'
  /// _include values supported by the server
  /// A list of _include values supported by the server.
  /// If this list is empty, the server does not support includes.
  final List<String>? searchInclude;

  /// Search parameters supported by implementation
  /// Search parameters for implementations to support and/or make use of - either references to ones defined in the specification, or additional ones defined for/by the implementation.
  /// The search parameters should include the control search parameters such as _sort, _count, etc. that also apply to this resource (though many will be listed at [CapabilityStatement.rest.searchParam](capabilitystatement-definitions.html#CapabilityStatement.rest.searchParam)). The behavior of some search parameters may be further described by other code or extension elements, or narrative within the capability statement or linked [SearchParameter](searchparameter.html#) definitions.
  final List<CapabilityStatementRestResourceSearchParam>? searchParam;

  /// _revinclude values supported by the server
  /// A list of _revinclude (reverse include) values supported by the server.
  /// If this list is empty, the server does not support reverse includes.
  final List<String>? searchRevInclude;

  /// Profiles for use cases supported
  /// A list of profiles that represent different use cases supported by the system. For a server, "supported by the system" means the system hosts/produces a set of resources that are conformant to a particular profile, and allows clients that use its services to search using this profile and to find appropriate data. For a client, it means the system will search by this profile and process data according to the guidance implicit in the profile. See further discussion in [Using Profiles](profiling.html#profile-uses).
  /// Supported profiles are different than the profile that applies to a particular resource in .rest.resource.profile. The resource profile is a general statement of what features of the resource are supported overall by the system - the sum total of the facilities it supports. A supported profile is a deeper statement about the functionality of the data and services provided by the server (or used by the client). A typical case is a laboratory system that produces a set of different reports - this is the list of types of data that it publishes. A key aspect of declaring profiles here is the question of how the client converts knowledge that the server publishes this data into working with the data; the client can inspect individual resources to determine whether they conform to a particular profile, but how does it find the ones that do? It does so by searching using the _profile parameter, so any resources listed here must be valid values for the _profile resource (using the identifier in the target profile).
  final List<String>? supportedProfile;

  /// A resource type that is supported
  /// A type of resource exposed via the restful interface.
  final String
      type; // Possible values: 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  /// If update can commit to a new identity
  /// A flag to indicate that the server allows or needs to allow the client to create new identities on the server (that is, the client PUTs to a location where there is no existing resource). Allowing this operation means that the server allows the client to create new identities on the server.
  /// Allowing the clients to create new identities on the server means that the system administrator needs to have confidence that the clients do not create clashing identities between them. Obviously, if there is only one client, this won't happen. While creating identities on the client means that the clients need to be managed, it's much more convenient for many scenarios if such management can be put in place.
  final bool? updateCreate;

  /// This field is set to no-version to specify that the system does not support (server) or use (client) versioning for this resource type. If this has some other value, the server must at least correctly track and populate the versionId meta-property on resources. If the value is 'versioned-update', then the server supports all the versioning features, including using e-tags for version integrity in the API.
  /// If a server supports versionIds correctly, it SHOULD support vread too, but is not required to do so.
  final String?
      versioning; // Possible values: 'no-version', 'versioned', 'versioned-update'
  CapabilityStatementRestResource({
    this.conditionalCreate,
    this.conditionalDelete,
    this.conditionalRead,
    this.conditionalUpdate,
    this.documentation,
    super.fhirExtension,
    super.id,
    this.interaction,
    super.modifierExtension,
    this.operation,
    this.profile,
    this.readHistory,
    this.referencePolicy,
    this.searchInclude,
    this.searchParam,
    this.searchRevInclude,
    this.supportedProfile,
    required this.type,
    this.updateCreate,
    this.versioning,
  });

  @override
  factory CapabilityStatementRestResource.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementRestResource(
      conditionalCreate: json['conditionalCreate'] as bool?,
      conditionalDelete: json['conditionalDelete'] as String?,
      conditionalRead: json['conditionalRead'] as String?,
      conditionalUpdate: json['conditionalUpdate'] as bool?,
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRestResourceInteraction.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRestResourceOperation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      profile: json['profile'] as String?,
      readHistory: json['readHistory'] as bool?,
      referencePolicy: (json['referencePolicy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchInclude: (json['searchInclude'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRestResourceSearchParam.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      searchRevInclude: (json['searchRevInclude'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      supportedProfile: (json['supportedProfile'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: json['type'] as String,
      updateCreate: json['updateCreate'] as bool?,
      versioning: json['versioning'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'conditionalCreate': conditionalCreate,
        'conditionalDelete': conditionalDelete,
        'conditionalRead': conditionalRead,
        'conditionalUpdate': conditionalUpdate,
        'documentation': documentation,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'interaction': interaction?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operation': operation?.map((e) => e.toJson()).toList(),
        'profile': profile,
        'readHistory': readHistory,
        'referencePolicy': referencePolicy?.map((e) => e).toList(),
        'searchInclude': searchInclude?.map((e) => e).toList(),
        'searchParam': searchParam?.map((e) => e.toJson()).toList(),
        'searchRevInclude': searchRevInclude?.map((e) => e).toList(),
        'supportedProfile': supportedProfile?.map((e) => e).toList(),
        'type': type,
        'updateCreate': updateCreate,
        'versioning': versioning,
      };

  @override
  CapabilityStatementRestResource copyWith({
    bool? conditionalCreate,
    String? conditionalDelete,
    String? conditionalRead,
    bool? conditionalUpdate,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<CapabilityStatementRestResourceInteraction>? interaction,
    List<Extension>? modifierExtension,
    List<CapabilityStatementRestResourceOperation>? operation,
    String? profile,
    bool? readHistory,
    List<String>? referencePolicy,
    List<String>? searchInclude,
    List<CapabilityStatementRestResourceSearchParam>? searchParam,
    List<String>? searchRevInclude,
    List<String>? supportedProfile,
    String? type,
    bool? updateCreate,
    String? versioning,
  }) {
    return CapabilityStatementRestResource(
      conditionalCreate: conditionalCreate ?? this.conditionalCreate,
      conditionalDelete: conditionalDelete ?? this.conditionalDelete,
      conditionalRead: conditionalRead ?? this.conditionalRead,
      conditionalUpdate: conditionalUpdate ?? this.conditionalUpdate,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      interaction: interaction ?? this.interaction,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      profile: profile ?? this.profile,
      readHistory: readHistory ?? this.readHistory,
      referencePolicy: referencePolicy ?? this.referencePolicy,
      searchInclude: searchInclude ?? this.searchInclude,
      searchParam: searchParam ?? this.searchParam,
      searchRevInclude: searchRevInclude ?? this.searchRevInclude,
      supportedProfile: supportedProfile ?? this.supportedProfile,
      type: type ?? this.type,
      updateCreate: updateCreate ?? this.updateCreate,
      versioning: versioning ?? this.versioning,
    );
  }
}

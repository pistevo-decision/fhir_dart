part of '../fhir_dart.dart';

/// In FHIR, search is not performed directly on a resource (by XML or JSON path), but on a named parameter that maps into the resource content.
/// A search parameter that defines a named search item that can be used to search/filter on a resource.
class SearchParameter extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'SearchParameter';

  /// The resource type(s) this search parameter applies to
  /// The base resource type(s) that this search parameter can be used against.
  /// A search parameter must always apply to at least one resource type. When search parameters apply to more than one resource type, they can be used against any of the listed resource types, or in a cross-type search (see [Cross Resource Search](http.html#xres-search)).
  final List<String>
      base; // Possible values: 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  /// Chained names supported
  /// Contains the names of any search parameters which may be chained to the containing search parameter. Chained parameters may be added to search parameters of type reference and specify that resources will only be returned if they contain a reference to a resource which matches the chained parameter value. Values for this field should be drawn from SearchParameter.code for a parameter on the target resource type.
  /// Systems are not required to list all the chain names they support, but if they don't list them, clients might not know to use them.
  final List<String>? chain;

  /// Code used in URL
  /// The code used in the URL or the parameter name in a parameters resource for this search parameter.
  /// For maximum compatibility, use only lowercase ASCII characters.
  final String code;

  /// Comparators supported for the search parameter.
  /// If no comparators are listed, clients should not expect servers to support any comparators.
  final List<String>?
      comparator; // Possible values: 'eq', 'ne', 'gt', 'lt', 'ge', 'le', 'sa', 'eb', 'ap'
  /// For Composite resources to define the parts
  /// Used to define the parts of a composite search parameter.
  final List<SearchParameterComponent>? component;

  /// Contact details for the publisher
  /// Contact details to assist a user in finding and communicating with the publisher.
  /// May be a web site, an email address, a telephone number, etc.
  final List<ContactDetail>? contact;

  /// Date last changed
  /// The date  (and optionally time) when the search parameter was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the search parameter changes.
  /// Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the search parameter. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
  final String? date;

  /// Original definition for the search parameter
  /// Where this search parameter is originally defined. If a derivedFrom is provided, then the details in the search parameter must be consistent with the definition from which it is defined. i.e. the parameter should have the same meaning, and (usually) the functionality should be a proper subset of the underlying search parameter.
  /// The intent of this is that a server can designate that it provides support for a search parameter defined in the specification itself (e.g.  [`value-quantity`](http://hl7.org/fhir/SearchParameter/Observation-value-quantity), but detail how it is supported by the server.
  final String? derivedFrom;

  /// Natural language description of the search parameter
  /// And how it used.
  /// This description can be used to capture details such as why the search parameter was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the search parameter as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the search parameter is presumed to be the predominant language in the place the search parameter was created).
  final String description;

  /// For testing purposes, not real usage
  /// A Boolean value to indicate that this search parameter is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.
  /// Allows filtering of search parameters that are appropriate for use versus not.
  final bool? experimental;

  /// FHIRPath expression that extracts the values
  /// A FHIRPath expression that returns a set of elements for the search parameter.
  /// Note that the elements returned by the expression are sometimes complex elements where logic is required to determine quite how to handle them; e.g. CodeableConcepts may contain text and/or multiple codings, where the codings themselves contain a code and a system. For composite search parameters, the outcome of the expression must a collection of base elements from which the composites are derived.
  final String? expression;

  /// Intended jurisdiction for search parameter (if applicable)
  /// A legal or geographic region in which the search parameter is intended to be used.
  /// It may be possible for the search parameter to be used in jurisdictions other than those for which it was originally designed or intended.
  final List<CodeableConcept>? jurisdiction;

  /// A modifier supported for the search parameter.
  final List<String>?
      modifier; // Possible values: 'missing', 'exact', 'contains', 'not', 'text', 'in', 'not-in', 'below', 'above', 'type', 'identifier', 'ofType'
  /// Allow multiple parameters (and)
  /// Whether multiple parameters are allowed - e.g. more than one parameter with the same name. The search matches if all the parameters match.
  final bool? multipleAnd;

  /// Allow multiple values per parameter (or)
  /// Whether multiple values are allowed for each time the parameter exists. Values are separated by commas, and the parameter matches if any of the values match.
  final bool? multipleOr;

  /// Name for this search parameter (computer friendly)
  /// A natural language name identifying the search parameter. This name should be usable as an identifier for the module by machine processing applications such as code generation.
  /// The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
  final String name;

  /// Name of the publisher (organization or individual)
  /// The name of the organization or individual that published the search parameter.
  /// Usually an organization but may be an individual. The publisher (or steward) of the search parameter is the organization or individual primarily responsible for the maintenance and upkeep of the search parameter. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the search parameter. This item SHOULD be populated unless the information is available from context.
  final String? publisher;

  /// Why this search parameter is defined
  /// Explanation of why this search parameter is needed and why it has been designed as it has.
  /// This element does not describe the usage of the search parameter. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this search parameter.
  final String? purpose;

  /// The status of this search parameter. Enables tracking the life-cycle of the content.
  /// Allows filtering of search parameters that are appropriate for use versus not.
  final String
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Types of resource (if a resource reference)
  /// Types of resource (if a resource is referenced).
  final List<String>?
      target; // Possible values: 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  /// The type of value that a search parameter may contain, and how the content is interpreted.
  final String
      type; // Possible values: 'number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special'
  /// Canonical identifier for this search parameter, represented as a URI (globally unique)
  /// An absolute URI that is used to identify this search parameter when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this search parameter is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the search parameter is stored on different servers.
  /// Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
  /// The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions).
  /// In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
  final String url;

  /// The context that the content is intended to support
  /// The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate search parameter instances.
  /// When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
  final List<UsageContext>? useContext;

  /// Business version of the search parameter
  /// The identifier that is used to identify this version of the search parameter when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the search parameter author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
  /// There may be different search parameter instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the search parameter with the format [url]|[version].
  final String? version;

  /// XPath that extracts the values
  /// An XPath expression that returns a set of elements for the search parameter.
  /// Note that the elements returned by the XPath are sometimes complex elements where logic is required to determine quite how to handle them; e.g. CodeableConcepts may contain text and/or multiple codings, where the codings themselves contain a code and a system.
  final String? xpath;

  /// How the search parameter relates to the set of elements returned by evaluating the xpath query.
  final String?
      xpathUsage; // Possible values: 'normal', 'phonetic', 'nearby', 'distance', 'other'
  SearchParameter({
    required this.base,
    this.chain,
    required this.code,
    this.comparator,
    this.component,
    this.contact,
    super.contained,
    this.date,
    this.derivedFrom,
    required this.description,
    this.experimental,
    this.expression,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.jurisdiction,
    super.language,
    super.meta,
    this.modifier,
    super.modifierExtension,
    this.multipleAnd,
    this.multipleOr,
    required this.name,
    this.publisher,
    this.purpose,
    required this.status,
    this.target,
    super.text,
    required this.type,
    required this.url,
    this.useContext,
    this.version,
    this.xpath,
    this.xpathUsage,
  });

  @override
  factory SearchParameter.fromJson(Map<String, dynamic> json) {
    return SearchParameter(
      base: (json['base'] as List<dynamic>).map((e) => e as String).toList(),
      chain:
          (json['chain'] as List<dynamic>?)?.map((e) => e as String).toList(),
      code: json['code'] as String,
      comparator: (json['comparator'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map((e) =>
              SearchParameterComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] as String?,
      derivedFrom: json['derivedFrom'] as String?,
      description: json['description'] as String,
      experimental: json['experimental'] as bool?,
      expression: json['expression'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      multipleAnd: json['multipleAnd'] as bool?,
      multipleOr: json['multipleOr'] as bool?,
      name: json['name'] as String,
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      status: json['status'] as String,
      target:
          (json['target'] as List<dynamic>?)?.map((e) => e as String).toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      type: json['type'] as String,
      url: json['url'] as String,
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
      xpath: json['xpath'] as String?,
      xpathUsage: json['xpathUsage'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'base': base.map((e) => e).toList(),
        'chain': chain?.map((e) => e).toList(),
        'code': code,
        'comparator': comparator?.map((e) => e).toList(),
        'component': component?.map((e) => e.toJson()).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'derivedFrom': derivedFrom,
        'description': description,
        'experimental': experimental,
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifier': modifier?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'multipleAnd': multipleAnd,
        'multipleOr': multipleOr,
        'name': name,
        'publisher': publisher,
        'purpose': purpose,
        'status': status,
        'target': target?.map((e) => e).toList(),
        'text': text?.toJson(),
        'type': type,
        'url': url,
        'useContext': useContext?.map((e) => e.toJson()).toList(),
        'version': version,
        'xpath': xpath,
        'xpathUsage': xpathUsage,
      };

  @override
  SearchParameter copyWith({
    List<String>? base,
    List<String>? chain,
    String? code,
    List<String>? comparator,
    List<SearchParameterComponent>? component,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? date,
    String? derivedFrom,
    String? description,
    bool? experimental,
    String? expression,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    List<CodeableConcept>? jurisdiction,
    String? language,
    Meta? meta,
    List<String>? modifier,
    List<Extension>? modifierExtension,
    bool? multipleAnd,
    bool? multipleOr,
    String? name,
    String? publisher,
    String? purpose,
    String? status,
    List<String>? target,
    Narrative? text,
    String? type,
    String? url,
    List<UsageContext>? useContext,
    String? version,
    String? xpath,
    String? xpathUsage,
  }) {
    return SearchParameter(
      base: base ?? this.base,
      chain: chain ?? this.chain,
      code: code ?? this.code,
      comparator: comparator ?? this.comparator,
      component: component ?? this.component,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      description: description ?? this.description,
      experimental: experimental ?? this.experimental,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      multipleAnd: multipleAnd ?? this.multipleAnd,
      multipleOr: multipleOr ?? this.multipleOr,
      name: name ?? this.name,
      publisher: publisher ?? this.publisher,
      purpose: purpose ?? this.purpose,
      status: status ?? this.status,
      target: target ?? this.target,
      text: text ?? this.text,
      type: type ?? this.type,
      url: url ?? this.url,
      useContext: useContext ?? this.useContext,
      version: version ?? this.version,
      xpath: xpath ?? this.xpath,
      xpathUsage: xpathUsage ?? this.xpathUsage,
    );
  }
}

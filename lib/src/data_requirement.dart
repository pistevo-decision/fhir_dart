part of '../fhir_dart.dart';

/// Base StructureDefinition for DataRequirement Type: Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of the data.
class DataRequirement extends Element implements FhirResource {
  /// What codes are expected
  /// Code filters specify additional constraints on the data, specifying the value set of interest for a particular element of the data. Each code filter defines an additional constraint on the data, i.e. code filters are AND'ed, not OR'ed.
  final List<DataRequirementCodeFilter>? codeFilter;

  /// What dates/date ranges are expected
  /// Date filters specify additional constraints on the data in terms of the applicable date range for specific elements. Each date filter specifies an additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
  final List<DataRequirementDateFilter>? dateFilter;

  /// Number of results
  /// Specifies a maximum number of results that are required (uses the _count search parameter).
  /// This element can be used in combination with the sort element to specify quota requirements such as "the most recent 5" or "the highest 5".
  final int? limit;

  /// Indicates specific structure elements that are referenced by the knowledge module
  /// Indicates that specific elements of the type are referenced by the knowledge module and must be supported by the consumer in order to obtain an effective evaluation. This does not mean that a value is required for this element, only that the consuming system must understand the element and be able to provide values for it if they are available.
  /// The value of mustSupport SHALL be a FHIRPath resolveable on the type of the DataRequirement. The path SHALL consist only of identifiers, constant indexers, and .resolve() (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
  final List<String>? mustSupport;

  /// The profile of the required data, specified as the uri of the profile definition.
  final List<String>? profile;

  /// Order of the results
  /// Specifies the order of the results to be returned.
  /// This element can be used in combination with the sort element to specify quota requirements such as "the most recent 5" or "the highest 5". When multiple sorts are specified, they are applied in the order they appear in the resource.
  final List<DataRequirementSort>? sort;

  /// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
  /// The intended subjects of the data requirement. If this element is not provided, a Patient subject is assumed.
  /// The subject of a data requirement is critical, as the data being specified is determined with respect to a particular subject. This corresponds roughly to the notion of a Compartment in that it limits what data is available based on its relationship to the subject. In CQL, this corresponds to the context declaration.
  final CodeableConcept? subjectCodeableConcept;

  /// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
  /// The intended subjects of the data requirement. If this element is not provided, a Patient subject is assumed.
  /// The subject of a data requirement is critical, as the data being specified is determined with respect to a particular subject. This corresponds roughly to the notion of a Compartment in that it limits what data is available based on its relationship to the subject. In CQL, this corresponds to the context declaration.
  final Reference? subjectReference;

  /// The type of the required data, specified as the type name of a resource. For profiles, this value is set to the type of the base resource of the profile.
  final String
      type; // Possible values: 'Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml', 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Type', 'Any'
  DataRequirement({
    this.codeFilter,
    this.dateFilter,
    super.fhirExtension,
    super.id,
    this.limit,
    this.mustSupport,
    this.profile,
    this.sort,
    this.subjectCodeableConcept,
    this.subjectReference,
    required this.type,
  });

  @override
  factory DataRequirement.fromJson(Map<String, dynamic> json) {
    return DataRequirement(
      codeFilter: (json['codeFilter'] as List<dynamic>?)
          ?.map((e) =>
              DataRequirementCodeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateFilter: (json['dateFilter'] as List<dynamic>?)
          ?.map((e) =>
              DataRequirementDateFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      limit: json['limit'] as int?,
      mustSupport: (json['mustSupport'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profile:
          (json['profile'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sort: (json['sort'] as List<dynamic>?)
          ?.map((e) => DataRequirementSort.fromJson(e as Map<String, dynamic>))
          .toList(),
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['subjectCodeableConcept'] as Map<String, dynamic>)
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(json['subjectReference'] as Map<String, dynamic>)
          : null,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'codeFilter': codeFilter?.map((e) => e.toJson()).toList(),
        'dateFilter': dateFilter?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'limit': limit,
        'mustSupport': mustSupport?.map((e) => e).toList(),
        'profile': profile?.map((e) => e).toList(),
        'sort': sort?.map((e) => e.toJson()).toList(),
        'subjectCodeableConcept': subjectCodeableConcept?.toJson(),
        'subjectReference': subjectReference?.toJson(),
        'type': type,
      };

  @override
  DataRequirement copyWith({
    List<DataRequirementCodeFilter>? codeFilter,
    List<DataRequirementDateFilter>? dateFilter,
    List<Extension>? fhirExtension,
    String? id,
    int? limit,
    List<String>? mustSupport,
    List<String>? profile,
    List<DataRequirementSort>? sort,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    String? type,
  }) {
    return DataRequirement(
      codeFilter: codeFilter ?? this.codeFilter,
      dateFilter: dateFilter ?? this.dateFilter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      limit: limit ?? this.limit,
      mustSupport: mustSupport ?? this.mustSupport,
      profile: profile ?? this.profile,
      sort: sort ?? this.sort,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      type: type ?? this.type,
    );
  }
}

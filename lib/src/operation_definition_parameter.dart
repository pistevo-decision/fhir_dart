part of '../fhir_dart.dart';

 /// Parameters for the operation/query
 /// The parameters for the operation/query.
 /// Query Definitions only have one output parameter, named "result". This might not be described, but can be to allow a profile to be defined.
class OperationDefinitionParameter extends BackboneElement implements FhirResource {
   /// ValueSet details if this is coded
   /// Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
  final OperationDefinitionParameterBinding? binding;
   /// Description of meaning/use
   /// Describes the meaning or use of this parameter.
  final String? documentation;
   /// Maximum Cardinality (a number or *)
   /// The maximum number of times this element is permitted to appear in the request or response.
  final String max;
   /// Minimum Cardinality
   /// The minimum number of times this parameter SHALL appear in the request or response.
  final int min;
   /// Name in Parameters.parameter.name or in URL
   /// The name of used to identify the parameter.
   /// This name must be a token (start with a letter in a..z, and only contain letters, numerals, and underscore. Note that for search parameters (type = string, with a search type), the name may be altered by the search modifiers.
  final String name;
   /// Parts of a nested Parameter
   /// The parts of a nested Parameter.
   /// Query Definitions only have one output parameter, named "result". This might not be described, but can be to allow a profile to be defined.
  final List<OperationDefinitionParameter>? fhirPart;
   /// References to this parameter
   /// Identifies other resource parameters within the operation invocation that are expected to resolve to this resource.
   /// Resolution applies if the referenced parameter exists.
  final List<OperationDefinitionParameterReferencedFrom>? referencedFrom;
   /// How the parameter is understood as a search parameter. This is only used if the parameter type is 'string'.
  final String? searchType; // Possible values: 'number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special'
   /// If type is Reference | canonical, allowed targets
   /// Used when the type is "Reference" or "canonical", and identifies a profile structure or implementation Guide that applies to the target of the reference this parameter refers to. If any profiles are specified, then the content must conform to at least one of them. The URL can be a local reference - to a contained StructureDefinition, or a reference to another StructureDefinition or Implementation Guide by a canonical URL. When an implementation guide is specified, the target resource SHALL conform to at least one profile defined in the implementation guide.
   /// Often, these profiles are the base definitions from the spec (e.g. http://hl7.org/fhir/StructureDefinition/Patient).
  final List<String>? targetProfile;
   /// What type this parameter has
   /// The type for this parameter.
   /// if there is no stated parameter, then the parameter is a multi-part parameter; type and must have at least one part defined.
  final String? type; // Possible values: 'Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml', 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Type', 'Any'
   /// in | out
   /// Whether this is an input or an output parameter.
   /// If a parameter name is used for both an input and an output parameter, the parameter should be defined twice.
  final String use; // Possible values: 'in', 'out'
  OperationDefinitionParameter({
    this.binding,
    this.documentation,
    super.fhirExtension,
    super.id,
    required this.max,
    required this.min,
    super.modifierExtension,
    required this.name,
    this.fhirPart,
    this.referencedFrom,
    this.searchType,
    this.targetProfile,
    this.type,
    required this.use,
  });
  
  @override
  factory OperationDefinitionParameter.fromJson(Map<String, dynamic> json) {
    return OperationDefinitionParameter(
      binding: json['binding'] != null ? OperationDefinitionParameterBinding.fromJson(json['binding'] as Map<String, dynamic>) : null,
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      max: json['max'] as String,
      min: json['min'] as int,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      fhirPart: (json['part'] as List<dynamic>?)?.map((e) => OperationDefinitionParameter.fromJson(e as Map<String, dynamic>)).toList(),
      referencedFrom: (json['referencedFrom'] as List<dynamic>?)?.map((e) => OperationDefinitionParameterReferencedFrom.fromJson(e as Map<String, dynamic>)).toList(),
      searchType: json['searchType'] as String?,
      targetProfile: (json['targetProfile'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: json['type'] as String?,
      use: json['use'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'binding': binding?.toJson(),
      'documentation': documentation,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'max': max,
      'min': min,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'part': fhirPart?.map((e) => e.toJson()).toList(),
      'referencedFrom': referencedFrom?.map((e) => e.toJson()).toList(),
      'searchType': searchType,
      'targetProfile': targetProfile?.map((e) => e).toList(),
      'type': type,
      'use': use,
    };
  
  @override
  OperationDefinitionParameter copyWith({
    OperationDefinitionParameterBinding? binding,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    String? max,
    int? min,
    List<Extension>? modifierExtension,
    String? name,
    List<OperationDefinitionParameter>? fhirPart,
    List<OperationDefinitionParameterReferencedFrom>? referencedFrom,
    String? searchType,
    List<String>? targetProfile,
    String? type,
    String? use,
  }) {
    return OperationDefinitionParameter(
      binding: binding ?? this.binding,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      max: max ?? this.max,
      min: min ?? this.min,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      fhirPart: fhirPart ?? this.fhirPart,
      referencedFrom: referencedFrom ?? this.referencedFrom,
      searchType: searchType ?? this.searchType,
      targetProfile: targetProfile ?? this.targetProfile,
      type: type ?? this.type,
      use: use ?? this.use,
    );
  }
}

part of '../fhir_dart.dart';

 /// Potential target for the link.
class GraphDefinitionLinkTarget extends BackboneElement implements FhirResource {
   /// Compartment Consistency Rules.
  final List<GraphDefinitionLinkTargetCompartment>? compartment;
   /// Additional links from target resource.
  final List<GraphDefinitionLink>? link;
   /// Criteria for reverse lookup
   /// A set of parameters to look up.
   /// At least one of the parameters must have the value {ref} which identifies the focus resource.
  final String? params;
   /// Profile for the target resource.
  final String? profile;
   /// Type of resource this link refers to.
  final String type; // Possible values: 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  GraphDefinitionLinkTarget({
    this.compartment,
    super.fhirExtension,
    super.id,
    this.link,
    super.modifierExtension,
    this.params,
    this.profile,
    required this.type,
  });
  
  @override
  factory GraphDefinitionLinkTarget.fromJson(Map<String, dynamic> json) {
    return GraphDefinitionLinkTarget(
      compartment: (json['compartment'] as List<dynamic>?)?.map((e) => GraphDefinitionLinkTargetCompartment.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      link: (json['link'] as List<dynamic>?)?.map((e) => GraphDefinitionLink.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      params: json['params'] as String?,
      profile: json['profile'] as String?,
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'compartment': compartment?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'link': link?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'params': params,
      'profile': profile,
      'type': type,
    };
  
  @override
  GraphDefinitionLinkTarget copyWith({
    List<GraphDefinitionLinkTargetCompartment>? compartment,
    List<Extension>? fhirExtension,
    String? id,
    List<GraphDefinitionLink>? link,
    List<Extension>? modifierExtension,
    String? params,
    String? profile,
    String? type,
  }) {
    return GraphDefinitionLinkTarget(
      compartment: compartment ?? this.compartment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      link: link ?? this.link,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      params: params ?? this.params,
      profile: profile ?? this.profile,
      type: type ?? this.type,
    );
  }
}

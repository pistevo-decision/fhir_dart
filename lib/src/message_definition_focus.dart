part of '../fhir_dart.dart';

/// Resource(s) that are the subject of the event
/// Identifies the resource (or resources) that are being addressed by the event.  For example, the Encounter for an admit message or two Account records for a merge.
class MessageDefinitionFocus extends BackboneElement implements FhirResource {
  /// Type of resource
  /// The kind of resource that must be the focus for this message.
  /// Multiple focuses addressing different resources may occasionally occur.  E.g. to link or unlink a resource from a particular account or encounter, etc.
  final String
      code; // Possible values: 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  /// Maximum number of focuses of this type
  /// Identifies the maximum number of resources of this type that must be pointed to by a message in order for it to be valid against this MessageDefinition.
  final String? max;

  /// Minimum number of focuses of this type
  /// Identifies the minimum number of resources of this type that must be pointed to by a message in order for it to be valid against this MessageDefinition.
  final int min;

  /// Profile that must be adhered to by focus
  /// A profile that reflects constraints for the focal resource (and potentially for related resources).
  /// This should be present for most message definitions.  However, if the message focus is only a single resource and there is no need to include referenced resources or otherwise enforce the presence of particular elements, it can be omitted.
  final String? profile;
  MessageDefinitionFocus({
    required this.code,
    super.fhirExtension,
    super.id,
    this.max,
    required this.min,
    super.modifierExtension,
    this.profile,
  });

  @override
  factory MessageDefinitionFocus.fromJson(Map<String, dynamic> json) {
    return MessageDefinitionFocus(
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      max: json['max'] as String?,
      min: json['min'] as int,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      profile: json['profile'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'max': max,
        'min': min,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'profile': profile,
      };

  @override
  MessageDefinitionFocus copyWith({
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    String? max,
    int? min,
    List<Extension>? modifierExtension,
    String? profile,
  }) {
    return MessageDefinitionFocus(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      max: max ?? this.max,
      min: min ?? this.min,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      profile: profile ?? this.profile,
    );
  }
}

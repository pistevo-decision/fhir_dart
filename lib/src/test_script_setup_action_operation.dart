part of '../fhir_dart.dart';

 /// The setup operation to perform
 /// The operation to perform.
class TestScriptSetupActionOperation extends BackboneElement implements FhirResource {
   /// Mime type to accept in the payload of the response, with charset etc.
   /// The mime-type to use for RESTful operation in the 'Accept' header.
   /// If this is specified, then test engine shall set the 'Accept' header to the corresponding value.  If you'd like to explicitly set the 'Accept' to some other value then use the 'requestHeader' element.
  final String? accept;
   /// Mime type of the request payload contents, with charset etc.
   /// The mime-type to use for RESTful operation in the 'Content-Type' header.
   /// If this is specified, then test engine shall set the 'Content-Type' header to the corresponding value.  If you'd like to explicitly set the 'Content-Type' to some other value then use the 'requestHeader' element.
  final String? contentType;
   /// Tracking/reporting operation description
   /// The description would be used by test engines for tracking and reporting purposes.
   /// This has no impact on the verification itself.
  final String? description;
   /// Server responding to the request
   /// The server where the request message is destined for.  Must be one of the server numbers listed in TestScript.destination section.
   /// If multiple TestScript.destination elements are defined and operation.destination is undefined, test engine will report an error as it cannot determine what destination to use for the exchange.
  final int? destination;
   /// Whether or not to send the request url in encoded format
   /// Whether or not to implicitly send the request url in encoded format. The default is true to match the standard RESTful client behavior. Set to false when communicating with a server that does not support encoded url paths.
  final bool encodeRequestUrl;
   /// Tracking/logging operation label
   /// The label would be used for tracking/logging purposes by test engines.
   /// This has no impact on the verification itself.
  final String? label;
   /// The HTTP method the test engine MUST use for this operation regardless of any other operation details.
   /// The primary purpose of the explicit HTTP method is support of  HTTP POST method invocation of the FHIR search. Other uses will include support of negative testing.
  final String? method; // Possible values: 'delete', 'get', 'options', 'patch', 'post', 'put', 'head'
   /// Server initiating the request
   /// The server where the request message originates from.  Must be one of the server numbers listed in TestScript.origin section.
   /// If absent, test engine will send the message.  When present, test engine will not send the request message but will wait for the request message to be sent from this origin server.
  final int? origin;
   /// Explicitly defined path parameters
   /// Path plus parameters after [type].  Used to set parts of the request URL explicitly.
   /// If "url" element is specified, then "targetId", "params", and "resource" elements will be ignored as "url" element will have everything needed for constructing the request url.  If "params" element is specified, then "targetId" element is ignored.  For FHIR operations that require a resource (e.g. "read" and "vread" operations), the "resource" element must be specified when "params" element is specified.  If "url" and "params" elements are absent, then the request url will be constructed from "targetId" fixture if present.  For "read" operation, the resource and id values will be extracted from "targetId" fixture and used to construct the url.  For "vread" and "history" operations, the versionId value will also be used.   Test engines would append whatever is specified for "params" to the URL after the resource type without tampering with the string (beyond encoding the URL for HTTP).  The "params" element does not correspond exactly to "search parameters".  Nor is it the "path".  It corresponds to the part of the URL that comes after the [type] (when "resource" element is specified); e.g. It corresponds to "/[id]/_history/[vid] {?_format=[mime-type]}" in the following operation: GET [base]/[type]/[id]/_history/[vid] {?_format=[mime-type]}  Test engines do have to look for placeholders (${}) and replace the variable placeholders with the variable values at runtime before sending the request.
  final String? params;
   /// Each operation can have one or more header elements
   /// Header elements would be used to set HTTP headers.
   /// This gives control to test-script writers to set headers explicitly based on test requirements.  It will allow for testing using:  - "If-Modified-Since" and "If-None-Match" headers.  See http://build.fhir.org/http.html#2.1.0.5.1 - "If-Match" header.  See http://build.fhir.org/http.html#2.1.0.11 - Conditional Create using "If-None-Exist".  See http://build.fhir.org/http.html#2.1.0.13.1 - Invalid "Content-Type" header for negative testing. - etc.
  final List<TestScriptSetupActionOperationRequestHeader>? requestHeader;
   /// Fixture Id of mapped request
   /// The fixture id (maybe new) to map to the request.
   /// If a requestId is supplied, then the resulting request (both headers and body) is mapped to the fixture ID (which may be entirely new and previously undeclared) designated by "requestId".  If requestId is not specified, it is the test engine's responsibility to store the request and use it as the requestId in subsequent assertions when assertion path and/or headerField is specified, direction is equal to request, and the requestId in not specified.
  final String? requestId;
   /// Resource type
   /// The type of the resource.  See http://build.fhir.org/resourcelist.html.
   /// If "url" element is specified, then "targetId", "params", and "resource" elements will be ignored as "url" element will have everything needed for constructing the request url.  If "params" element is specified, then "targetId" element is ignored. For FHIR operations that require a resource (e.g. "read" and "vread" operations), the "resource" element must be specified when "params" element is specified.  If "url" and "params" elements are absent, then the request url will be constructed from "targetId" fixture if present. For "read" operation, the resource and id values will be extracted from "targetId" fixture and used to construct the url. For "vread" and "history" operations, the versionId value will also be used.
  final String? resource; // Possible values: 'Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml', 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
   /// Fixture Id of mapped response
   /// The fixture id (maybe new) to map to the response.
   /// If a responseId is supplied, and the server responds, then the resulting response (both headers and body) is mapped to the fixture ID (which may be entirely new and previously undeclared) designated by "responseId".  If responseId is not specified, it is the test engine's responsibility to store the response and use it as the responseId in subsequent assertions when assertion path and/or headerField is specified and the responseId is not specified.
  final String? responseId;
   /// Fixture Id of body for PUT and POST requests
   /// The id of the fixture used as the body of a PUT or POST request.
  final String? sourceId;
   /// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests.
   /// If "url" element is specified, then "targetId", "params", and "resource" elements will be ignored as "url" element will have everything needed for constructing the request url.  If "params" element is specified, then "targetId" element is ignored.  For FHIR operations that require a resource (e.g. "read" and "vread" operations), the "resource" element must be specified when "params" element is specified.  If "url" and "params" elements are absent, then the request url will be constructed from "targetId" fixture if present.  For "read" operation, the resource and id values will be extracted from "targetId" fixture and used to construct the url.  For "vread" and "history" operations, the versionId value will also be used.
  final String? targetId;
   /// The operation code type that will be executed
   /// Server interaction or operation type.
   /// See http://build.fhir.org/http.html for list of server interactions.
  final Coding? type;
   /// Request URL
   /// Complete request URL.
   /// Used to set the request URL explicitly.  If "url" element is defined, then "targetId", "resource", and "params" elements will be ignored.  Test engines would use whatever is specified in "url" without tampering with the string (beyond encoding the URL for HTTP).  Test engines do have to look for placeholders (${}) and replace the variable placeholders with the variable values at runtime before sending the request.
  final String? url;
  TestScriptSetupActionOperation({
    this.accept,
    this.contentType,
    this.description,
    this.destination,
    required this.encodeRequestUrl,
    super.fhirExtension,
    super.id,
    this.label,
    this.method,
    super.modifierExtension,
    this.origin,
    this.params,
    this.requestHeader,
    this.requestId,
    this.resource,
    this.responseId,
    this.sourceId,
    this.targetId,
    this.type,
    this.url,
  });
  
  @override
  factory TestScriptSetupActionOperation.fromJson(Map<String, dynamic> json) {
    return TestScriptSetupActionOperation(
      accept: json['accept'] as String?,
      contentType: json['contentType'] as String?,
      description: json['description'] as String?,
      destination: json['destination'] as int?,
      encodeRequestUrl: json['encodeRequestUrl'] as bool,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      label: json['label'] as String?,
      method: json['method'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      origin: json['origin'] as int?,
      params: json['params'] as String?,
      requestHeader: (json['requestHeader'] as List<dynamic>?)?.map((e) => TestScriptSetupActionOperationRequestHeader.fromJson(e as Map<String, dynamic>)).toList(),
      requestId: json['requestId'] as String?,
      resource: json['resource'] as String?,
      responseId: json['responseId'] as String?,
      sourceId: json['sourceId'] as String?,
      targetId: json['targetId'] as String?,
      type: json['type'] != null ? Coding.fromJson(json['type'] as Map<String, dynamic>) : null,
      url: json['url'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'accept': accept,
      'contentType': contentType,
      'description': description,
      'destination': destination,
      'encodeRequestUrl': encodeRequestUrl,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'label': label,
      'method': method,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'origin': origin,
      'params': params,
      'requestHeader': requestHeader?.map((e) => e.toJson()).toList(),
      'requestId': requestId,
      'resource': resource,
      'responseId': responseId,
      'sourceId': sourceId,
      'targetId': targetId,
      'type': type?.toJson(),
      'url': url,
    };
  
  @override
  TestScriptSetupActionOperation copyWith({
    String? accept,
    String? contentType,
    String? description,
    int? destination,
    bool? encodeRequestUrl,
    List<Extension>? fhirExtension,
    String? id,
    String? label,
    String? method,
    List<Extension>? modifierExtension,
    int? origin,
    String? params,
    List<TestScriptSetupActionOperationRequestHeader>? requestHeader,
    String? requestId,
    String? resource,
    String? responseId,
    String? sourceId,
    String? targetId,
    Coding? type,
    String? url,
  }) {
    return TestScriptSetupActionOperation(
      accept: accept ?? this.accept,
      contentType: contentType ?? this.contentType,
      description: description ?? this.description,
      destination: destination ?? this.destination,
      encodeRequestUrl: encodeRequestUrl ?? this.encodeRequestUrl,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      label: label ?? this.label,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      origin: origin ?? this.origin,
      params: params ?? this.params,
      requestHeader: requestHeader ?? this.requestHeader,
      requestId: requestId ?? this.requestId,
      resource: resource ?? this.resource,
      responseId: responseId ?? this.responseId,
      sourceId: sourceId ?? this.sourceId,
      targetId: targetId ?? this.targetId,
      type: type ?? this.type,
      url: url ?? this.url,
    );
  }
}

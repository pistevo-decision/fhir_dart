part of '../fhir_dart.dart';

/// The assertion to perform
/// Evaluates the results of previous operations to determine if the server under test behaves appropriately.
/// In order to evaluate an assertion, the request, response, and results of the most recently executed operation must always be maintained by the test engine.
class TestScriptSetupActionAssert extends BackboneElement
    implements FhirResource {
  /// The FHIRPath expression to evaluate against the source fixture. When compareToSourceId is defined, either compareToSourceExpression or compareToSourcePath must be defined, but not both.
  /// Thefhirpath expression to be evaluated against the expected fixture to compare to. Ignored if "assert.value" is used. The evaluation will be done before the assertion is evaluated.
  final String? compareToSourceExpression;

  /// Id of the source fixture to be evaluated
  /// Id of the source fixture used as the contents to be evaluated by either the "source/expression" or "sourceId/path" definition.
  final String? compareToSourceId;

  /// XPath or JSONPath expression to evaluate against the source fixture. When compareToSourceId is defined, either compareToSourceExpression or compareToSourcePath must be defined, but not both.
  /// The XPath or JSONPath expression to be evaluated against the expected fixture to compare to. Ignored if "assert.value" is used. The evaluation will be done before the assertion is evaluated.
  final String? compareToSourcePath;

  /// Mime type to compare against the 'Content-Type' header
  /// The mime-type contents to compare against the request or response message 'Content-Type' header.
  /// If this is specified, then test engine shall confirm that the content-type of the last operation's headers is set to this value.  If "assert.sourceId" element is specified, then the evaluation will be done against the headers mapped to that sourceId (and not the last operation's headers).  If you'd like to have more control over the string, then use 'assert.headerField' instead.
  final String? contentType;

  /// Tracking/reporting assertion description
  /// The description would be used by test engines for tracking and reporting purposes.
  /// This has no impact on the verification itself.
  final String? description;

  /// response | request
  /// The direction to use for the assertion.
  /// If the direction is specified as "response" (the default), then the processing of this assert is against the received response message. If the direction is specified as "request", then the processing of this assert is against the sent request message.
  final String? direction; // Possible values: 'response', 'request'
  /// The FHIRPath expression to be evaluated against the request or response message contents - HTTP headers and payload.
  /// If both "expression" and a "fixtureId" are specified, then the expression will be evaluated against the request or response body mapped to the fixtureId.  If "expression" is specified and a "fixtureId" is not, then the expression will be evaluated against the response body of the last operation.  Test engines are to store the request and response body and headers of the last operation at all times for subsequent assertions.
  final String? expression;

  /// HTTP header field name
  /// The HTTP header field name e.g. 'Location'.
  /// If "headerField" is specified then "value" must be specified.  If "sourceId" is not specified, then "headerField" will be evaluated against the last operation's response headers.  Test engines are to keep track of the last operation's response body and response headers.
  final String? headerField;

  /// Tracking/logging assertion label
  /// The label would be used for tracking/logging purposes by test engines.
  /// This has no impact on the verification itself.
  final String? label;

  /// Fixture Id of minimum content resource
  /// The ID of a fixture.  Asserts that the response contains at a minimum the fixture specified by minimumId.
  /// Asserts that the response contains all the element/content in another fixture pointed to by minimumId.  This can be a statically defined fixture or one that is dynamically set via responseId.
  final String? minimumId;

  /// Perform validation on navigation links?
  /// Whether or not the test execution performs validation on the bundle navigation links.
  /// Asserts that the Bundle contains first, last, and next links.
  final bool? navigationLinks;

  /// The operator type defines the conditional behavior of the assert. If not defined, the default is equals.
  /// Operators are useful especially for negative testing.  If operator is not specified, then the "equals" operator is assumed; e.g. ```<code>   <assert>  <operator value="in" />  <responseCode value="200,201,204" />    </assert>    <assert>  <operator value="notEquals" />  <response value="okay"/>   </assert>    <assert>  <operator value="greaterThan" />    <responseHeader>     <field value="Content-Length" />     <value value="0" />    </responseHeader/>   </assert> </code> ```.
  final String?
      fhirOperator; // Possible values: 'equals', 'notEquals', 'in', 'notIn', 'greaterThan', 'lessThan', 'empty', 'notEmpty', 'contains', 'notContains', 'eval'
  /// XPath or JSONPath expression
  /// The XPath or JSONPath expression to be evaluated against the fixture representing the response received from server.
  /// If both "path" and a "fixtureId" are specified, then the path will be evaluated against the request or response body mapped to the fixtureId.  If "path" is specified and a "fixtureId" is not, then the path will be evaluated against the response body of the last operation.  Test engines are to store the request and response body and headers of the last operation at all times for subsequent assertions.
  final String? path;

  /// The request method or HTTP operation code to compare against that used by the client system under test.
  /// If "requestMethod" is specified then it will be used in place of "value". The "requestMethod" will evaluate against the last operation's request HTTP operation.
  final String?
      requestMethod; // Possible values: 'delete', 'get', 'options', 'patch', 'post', 'put', 'head'
  /// Request URL comparison value
  /// The value to use in a comparison against the request URL path string.
  /// If "requestURL" is specified then it will be used in place of "value". The "requestURL" will evaluate against the last operation's full request URL path string.
  final String? requestURL;

  /// Resource type
  /// The type of the resource.  See http://build.fhir.org/resourcelist.html.
  /// This will be expected resource type in response body e.g. in read, vread, search, etc.  See http://build.fhir.org/resourcelist.html for complete list of resource types; e.g. <assert > <resourceType value="Patient" </assert>.
  final String?
      resource; // Possible values: 'Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml', 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'
  /// okay | created | noContent | notModified | bad | forbidden | notFound | methodNotAllowed | conflict | gone | preconditionFailed | unprocessable.
  /// This is a shorter way of achieving similar verifications via "assert.responseCode".  If you need more control, then use "assert.responseCode"  e.g. <assert>  <contentType value="json" />  <response value="okay"/> </assert>.
  final String?
      response; // Possible values: 'okay', 'created', 'noContent', 'notModified', 'bad', 'forbidden', 'notFound', 'methodNotAllowed', 'conflict', 'gone', 'preconditionFailed', 'unprocessable'
  /// HTTP response code to test
  /// The value of the HTTP response code to be tested.
  /// To be used with "operator" attribute value. Asserts that the response code equals this value if "operator" is not specified.   If the operator is "in" or "notIn" then the responseCode would be a comma-separated list of values e.g. "200,201". Otherwise, it's expected to be a numeric value.   If "fixture" is not specified, then the "responseBodyId" value of the last operation is assumed.
  final String? responseCode;

  /// Fixture Id of source expression or headerField
  /// Fixture to evaluate the XPath/JSONPath expression or the headerField  against.
  /// This can be a statically defined fixture (at the top of the testscript) or a dynamically set fixture created by responseId of the action.operation element.
  final String? sourceId;

  /// Profile Id of validation profile reference
  /// The ID of the Profile to validate against.
  /// The ID of a Profile fixture. Asserts that the response is valid according to the Profile specified by validateProfileId.
  final String? validateProfileId;

  /// The value to compare to.
  /// The string-representation of a number, string, or boolean that is expected.  Test engines do have to look for placeholders (${}) and replace the variable placeholders with the variable values at runtime before comparing this value to the actual value.
  final String? value;

  /// Will this assert produce a warning only on error?
  /// Whether or not the test execution will produce a warning only on error for this assert.
  /// If this element is specified and it is true, then assertion failures can be logged by test engine but should not stop the test script execution from proceeding.  There are likely cases where the spec is not clear on what should happen. If the spec says something is optional (maybe a response header for example), but a server doesn’t do it, we could choose to issue a warning.
  final bool warningOnly;
  TestScriptSetupActionAssert({
    this.compareToSourceExpression,
    this.compareToSourceId,
    this.compareToSourcePath,
    this.contentType,
    this.description,
    this.direction,
    this.expression,
    super.fhirExtension,
    this.headerField,
    super.id,
    this.label,
    this.minimumId,
    super.modifierExtension,
    this.navigationLinks,
    this.fhirOperator,
    this.path,
    this.requestMethod,
    this.requestURL,
    this.resource,
    this.response,
    this.responseCode,
    this.sourceId,
    this.validateProfileId,
    this.value,
    required this.warningOnly,
  });

  @override
  factory TestScriptSetupActionAssert.fromJson(Map<String, dynamic> json) {
    return TestScriptSetupActionAssert(
      compareToSourceExpression: json['compareToSourceExpression'] as String?,
      compareToSourceId: json['compareToSourceId'] as String?,
      compareToSourcePath: json['compareToSourcePath'] as String?,
      contentType: json['contentType'] as String?,
      description: json['description'] as String?,
      direction: json['direction'] as String?,
      expression: json['expression'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      headerField: json['headerField'] as String?,
      id: json['id'] as String?,
      label: json['label'] as String?,
      minimumId: json['minimumId'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      navigationLinks: json['navigationLinks'] as bool?,
      fhirOperator: json['operator'] as String?,
      path: json['path'] as String?,
      requestMethod: json['requestMethod'] as String?,
      requestURL: json['requestURL'] as String?,
      resource: json['resource'] as String?,
      response: json['response'] as String?,
      responseCode: json['responseCode'] as String?,
      sourceId: json['sourceId'] as String?,
      validateProfileId: json['validateProfileId'] as String?,
      value: json['value'] as String?,
      warningOnly: json['warningOnly'] as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'compareToSourceExpression': compareToSourceExpression,
        'compareToSourceId': compareToSourceId,
        'compareToSourcePath': compareToSourcePath,
        'contentType': contentType,
        'description': description,
        'direction': direction,
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'headerField': headerField,
        'id': id,
        'label': label,
        'minimumId': minimumId,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'navigationLinks': navigationLinks,
        'operator': fhirOperator,
        'path': path,
        'requestMethod': requestMethod,
        'requestURL': requestURL,
        'resource': resource,
        'response': response,
        'responseCode': responseCode,
        'sourceId': sourceId,
        'validateProfileId': validateProfileId,
        'value': value,
        'warningOnly': warningOnly,
      };

  @override
  TestScriptSetupActionAssert copyWith({
    String? compareToSourceExpression,
    String? compareToSourceId,
    String? compareToSourcePath,
    String? contentType,
    String? description,
    String? direction,
    String? expression,
    List<Extension>? fhirExtension,
    String? headerField,
    String? id,
    String? label,
    String? minimumId,
    List<Extension>? modifierExtension,
    bool? navigationLinks,
    String? fhirOperator,
    String? path,
    String? requestMethod,
    String? requestURL,
    String? resource,
    String? response,
    String? responseCode,
    String? sourceId,
    String? validateProfileId,
    String? value,
    bool? warningOnly,
  }) {
    return TestScriptSetupActionAssert(
      compareToSourceExpression:
          compareToSourceExpression ?? this.compareToSourceExpression,
      compareToSourceId: compareToSourceId ?? this.compareToSourceId,
      compareToSourcePath: compareToSourcePath ?? this.compareToSourcePath,
      contentType: contentType ?? this.contentType,
      description: description ?? this.description,
      direction: direction ?? this.direction,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      headerField: headerField ?? this.headerField,
      id: id ?? this.id,
      label: label ?? this.label,
      minimumId: minimumId ?? this.minimumId,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      navigationLinks: navigationLinks ?? this.navigationLinks,
      fhirOperator: fhirOperator ?? this.fhirOperator,
      path: path ?? this.path,
      requestMethod: requestMethod ?? this.requestMethod,
      requestURL: requestURL ?? this.requestURL,
      resource: resource ?? this.resource,
      response: response ?? this.response,
      responseCode: responseCode ?? this.responseCode,
      sourceId: sourceId ?? this.sourceId,
      validateProfileId: validateProfileId ?? this.validateProfileId,
      value: value ?? this.value,
      warningOnly: warningOnly ?? this.warningOnly,
    );
  }
}

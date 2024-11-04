part of '../fhir_dart.dart';

 /// A guidance response is the formal response to a guidance request, including any output parameters returned by the evaluation, as well as the description of any proposed actions to be taken.
 /// The GuidanceResponse resource supports recording the results of decision support interactions, reportability determination for public health, as well as the communication of additional data requirements for subsequent interactions.
class GuidanceResponse extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'GuidanceResponse';
   /// Additional required data
   /// If the evaluation could not be completed due to lack of information, or additional information would potentially result in a more accurate response, this element will a description of the data required in order to proceed with the evaluation. A subsequent request to the service should include this data.
  final List<DataRequirement>? dataRequirement;
   /// Encounter during which the response was returned
   /// The encounter during which this response was created or to which the creation of this record is tightly associated.
   /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official copmletion of an encounter but still be tied to the context of the encounter.
  final Reference? encounter;
   /// Messages resulting from the evaluation of the artifact or artifacts. As part of evaluating the request, the engine may produce informational or warning messages. These messages will be provided by this element.
  final List<Reference>? evaluationMessage;
   /// Business identifier
   /// Allows a service to provide  unique, business identifiers for the response.
  final List<Identifier>? identifier;
   /// What guidance was requested
   /// An identifier, CodeableConcept or canonical reference to the guidance that was requested.
  final String? moduleCanonical;
   /// What guidance was requested
   /// An identifier, CodeableConcept or canonical reference to the guidance that was requested.
  final CodeableConcept? moduleCodeableConcept;
   /// What guidance was requested
   /// An identifier, CodeableConcept or canonical reference to the guidance that was requested.
  final String? moduleUri;
   /// Additional notes about the response
   /// Provides a mechanism to communicate additional information about the response.
  final List<Annotation>? note;
   /// When the guidance response was processed
   /// Indicates when the guidance response was processed.
  final String? occurrenceDateTime;
   /// The output parameters of the evaluation, if any. Many modules will result in the return of specific resources such as procedure or communication requests that are returned as part of the operation result. However, modules may define specific outputs that would be returned as the result of the evaluation, and these would be returned in this element.
  final Reference? outputParameters;
   /// Device returning the guidance
   /// Provides a reference to the device that performed the guidance.
  final Reference? performer;
   /// Why guidance is needed
   /// Describes the reason for the guidance response in coded or textual form.
  final List<CodeableConcept>? reasonCode;
   /// Why guidance is needed
   /// Indicates the reason the request was initiated. This is typically provided as a parameter to the evaluation and echoed by the service, although for some use cases, such as subscription- or event-based scenarios, it may provide an indication of the cause for the response.
  final List<Reference>? reasonReference;
   /// The identifier of the request associated with this response, if any
   /// The identifier of the request associated with this response. If an identifier was given as part of the request, it will be reproduced here to enable the requester to more easily identify the response in a multi-request scenario.
  final Identifier? requestIdentifier;
   /// Proposed actions, if any
   /// The actions, if any, produced by the evaluation of the artifact.
  final Reference? result;
   /// The status of the response. If the evaluation is completed successfully, the status will indicate success. However, in order to complete the evaluation, the engine may require more information. In this case, the status will be data-required, and the response will contain a description of the additional required information. If the evaluation completed successfully, but the engine determines that a potentially more accurate response could be provided if more data was available, the status will be data-requested, and the response will contain a description of the additional requested information.
   /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String status; // Possible values: 'success', 'data-requested', 'data-required', 'in-progress', 'failure', 'entered-in-error'
   /// Patient the request was performed for
   /// The patient for which the request was processed.
  final Reference? subject;
  GuidanceResponse({
    super.contained,
    this.dataRequirement,
    this.encounter,
    this.evaluationMessage,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.moduleCanonical,
    this.moduleCodeableConcept,
    this.moduleUri,
    this.note,
    this.occurrenceDateTime,
    this.outputParameters,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.requestIdentifier,
    this.result,
    required this.status,
    this.subject,
    super.text,
  });
  
  @override
  factory GuidanceResponse.fromJson(Map<String, dynamic> json) {
    return GuidanceResponse(
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      dataRequirement: (json['dataRequirement'] as List<dynamic>?)?.map((e) => DataRequirement.fromJson(e as Map<String, dynamic>)).toList(),
      encounter: json['encounter'] != null ? Reference.fromJson(json['encounter'] as Map<String, dynamic>) : null,
      evaluationMessage: (json['evaluationMessage'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      moduleCanonical: json['moduleCanonical'] as String?,
      moduleCodeableConcept: json['moduleCodeableConcept'] != null ? CodeableConcept.fromJson(json['moduleCodeableConcept'] as Map<String, dynamic>) : null,
      moduleUri: json['moduleUri'] as String?,
      note: (json['note'] as List<dynamic>?)?.map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      outputParameters: json['outputParameters'] != null ? Reference.fromJson(json['outputParameters'] as Map<String, dynamic>) : null,
      performer: json['performer'] != null ? Reference.fromJson(json['performer'] as Map<String, dynamic>) : null,
      reasonCode: (json['reasonCode'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      requestIdentifier: json['requestIdentifier'] != null ? Identifier.fromJson(json['requestIdentifier'] as Map<String, dynamic>) : null,
      result: json['result'] != null ? Reference.fromJson(json['result'] as Map<String, dynamic>) : null,
      status: json['status'] as String,
      subject: json['subject'] != null ? Reference.fromJson(json['subject'] as Map<String, dynamic>) : null,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contained': contained?.map((e) => e.toJson()).toList(),
      'dataRequirement': dataRequirement?.map((e) => e.toJson()).toList(),
      'encounter': encounter?.toJson(),
      'evaluationMessage': evaluationMessage?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'moduleCanonical': moduleCanonical,
      'moduleCodeableConcept': moduleCodeableConcept?.toJson(),
      'moduleUri': moduleUri,
      'note': note?.map((e) => e.toJson()).toList(),
      'occurrenceDateTime': occurrenceDateTime,
      'outputParameters': outputParameters?.toJson(),
      'performer': performer?.toJson(),
      'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
      'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
      'requestIdentifier': requestIdentifier?.toJson(),
      'result': result?.toJson(),
      'status': status,
      'subject': subject?.toJson(),
      'text': text?.toJson(),
    };
  
  @override
  GuidanceResponse copyWith({
    List<Resource>? contained,
    List<DataRequirement>? dataRequirement,
    Reference? encounter,
    List<Reference>? evaluationMessage,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? moduleCanonical,
    CodeableConcept? moduleCodeableConcept,
    String? moduleUri,
    List<Annotation>? note,
    String? occurrenceDateTime,
    Reference? outputParameters,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Identifier? requestIdentifier,
    Reference? result,
    String? status,
    Reference? subject,
    Narrative? text,
  }) {
    return GuidanceResponse(
      contained: contained ?? this.contained,
      dataRequirement: dataRequirement ?? this.dataRequirement,
      encounter: encounter ?? this.encounter,
      evaluationMessage: evaluationMessage ?? this.evaluationMessage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      moduleCanonical: moduleCanonical ?? this.moduleCanonical,
      moduleCodeableConcept: moduleCodeableConcept ?? this.moduleCodeableConcept,
      moduleUri: moduleUri ?? this.moduleUri,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      outputParameters: outputParameters ?? this.outputParameters,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      requestIdentifier: requestIdentifier ?? this.requestIdentifier,
      result: result ?? this.result,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}

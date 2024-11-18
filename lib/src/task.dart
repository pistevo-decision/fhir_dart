part of '../fhir_dart.dart';

/// A task to be performed.
class Task extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Task';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Task Creation Date
  /// The date and time this task was created.
  final String? authoredOn;

  /// Request fulfilled by this task
  /// BasedOn refers to a higher-level authorization that triggered the creation of the task.  It references a "request" resource such as a ServiceRequest, MedicationRequest, ServiceRequest, CarePlan, etc. which is distinct from the "request" resource the task is seeking to fulfill.  This latter resource is referenced by FocusOn.  For example, based on a ServiceRequest (= BasedOn), a task is created to fulfill a procedureRequest ( = FocusOn ) to collect a specimen from a patient.
  final List<Reference>? basedOn;

  /// E.g. "Specimen collected", "IV prepped"
  /// Contains business-specific nuances of the business state.
  final CodeableConcept? businessStatus;

  /// Task Type
  /// A name or code (or both) briefly describing what the task involves.
  /// The title (eg "My Tasks", "Outstanding Tasks for Patient X") should go into the code.
  final CodeableConcept? code;

  /// Human-readable explanation of task
  /// A free-text description of what is to be performed.
  final String? description;

  /// Healthcare event during which this task originated
  /// The healthcare event  (e.g. a patient and healthcare provider interaction) during which this task was created.
  final Reference? encounter;

  /// Start and end time of execution
  /// Identifies the time action was first taken against the task (start) and/or the time final action was taken against the task prior to marking it as completed (end).
  final Period? executionPeriod;

  /// What task is acting on
  /// The request being actioned or the resource being manipulated by this task.
  /// If multiple resources need to be manipulated, use sub-tasks.  (This ensures that status can be tracked independently for each referenced resource.).
  final Reference? focus;

  /// Beneficiary of the Task
  /// The entity who benefits from the performance of the service specified in the task (e.g., the patient).
  final Reference? fhirFor;

  /// Requisition or grouper id
  /// An identifier that links together multiple tasks and other requests that were created in the same context.
  final Identifier? groupIdentifier;

  /// Task Instance Identifier
  /// The business identifier for this task.
  final List<Identifier>? identifier;

  /// Information used to perform task
  /// Additional information that may be needed in the execution of the task.
  final List<TaskInput>? input;

  /// Formal definition of task
  /// The URL pointing to a *FHIR*-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Task.
  final String? instantiatesCanonical;

  /// Formal definition of task
  /// The URL pointing to an *externally* maintained  protocol, guideline, orderset or other definition that is adhered to in whole or in part by this Task.
  final String? instantiatesUri;

  /// Associated insurance coverage
  /// Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be relevant to the Task.
  final List<Reference>? insurance;

  /// Indicates the "level" of actionability associated with the Task, i.e. i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.
  /// This element is immutable.  Proposed tasks, planned tasks, etc. must be distinct instances.
  /// In most cases, Tasks will have an intent of "order".
  final String
      intent; // Possible values: 'unknown', 'proposal', 'plan', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option'
  /// Task Last Modified Date
  /// The date and time of last modification to this task.
  final String? lastModified;

  /// Where task occurs
  /// Principal physical location where the this task is performed.
  final Reference? location;

  /// Comments made about the task
  /// Free-text information captured about the task as it progresses.
  final List<Annotation>? note;

  /// Information produced as part of task
  /// Outputs produced by the Task.
  final List<TaskOutput>? output;

  /// Responsible individual
  /// Individual organization or Device currently responsible for task execution.
  /// Tasks may be created with an owner not yet identified.
  final Reference? owner;

  /// Composite task
  /// Task that this particular task is part of.
  /// This should usually be 0..1.
  final List<Reference>? partOf;

  /// Requested performer
  /// The kind of participant that should perform the task.
  final List<CodeableConcept>? performerType;

  /// Indicates how quickly the Task should be addressed with respect to other requests.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// Why task is needed
  /// A description or code indicating why this task needs to be performed.
  /// This should only be included if there is no focus or if it differs from the reason indicated on the focus.
  final CodeableConcept? reasonCode;

  /// Why task is needed
  /// A resource reference indicating why this task needs to be performed.
  /// Tasks might be justified based on an Observation, a Condition, a past or planned procedure, etc.   This should only be included if there is no focus or if it differs from the reason indicated on the focus.    Use the CodeableConcept text element in `Task.reasonCode` if the data is free (uncoded) text.
  final Reference? reasonReference;

  /// Key events in history of the Task
  /// Links to Provenance records for past versions of this Task that identify key state transitions or updates that are likely to be relevant to a user looking at the current version of the task.
  /// This element does not point to the Provenance associated with the *current* version of the resource - as it would be created after this version existed.  The Provenance for the current version can be retrieved with a _revinclude.
  final List<Reference>? relevantHistory;

  /// Who is asking for task to be done
  /// The creator of the task.
  final Reference? requester;

  /// Constraints on fulfillment tasks
  /// If the Task.focus is a request resource and the task is seeking fulfillment (i.e. is asking for the request to be actioned), this element identifies any limitations on what parts of the referenced request should be actioned.
  final TaskRestriction? restriction;

  /// The current status of the task.
  final String
      status; // Possible values: 'draft', 'requested', 'received', 'accepted', 'rejected', 'ready', 'cancelled', 'in-progress', 'on-hold', 'failed', 'completed', 'entered-in-error'
  /// Reason for current status
  /// An explanation as to why this task is held, failed, was refused, etc.
  /// This applies to the current status.  Look at the history of the task to see reasons for past statuses.
  final CodeableConcept? statusReason;
  Task({
    this.authoredOn,
    this.basedOn,
    this.businessStatus,
    this.code,
    super.contained,
    this.description,
    this.encounter,
    this.executionPeriod,
    super.fhirExtension,
    this.focus,
    this.fhirFor,
    this.groupIdentifier,
    super.id,
    this.identifier,
    super.implicitRules,
    this.input,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.insurance,
    required this.intent,
    super.language,
    this.lastModified,
    this.location,
    super.meta,
    super.modifierExtension,
    this.note,
    this.output,
    this.owner,
    this.partOf,
    this.performerType,
    this.priority,
    this.reasonCode,
    this.reasonReference,
    this.relevantHistory,
    this.requester,
    this.restriction,
    required this.status,
    this.statusReason,
    super.text,
  });

  @override
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      authoredOn: json['authoredOn'] as String?,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      businessStatus: json['businessStatus'] != null
          ? CodeableConcept.fromJson(
              (json['businessStatus'] as Map).cast<String, dynamic>())
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: json['description'] as String?,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      executionPeriod: json['executionPeriod'] != null
          ? Period.fromJson(
              (json['executionPeriod'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      focus: json['focus'] != null
          ? Reference.fromJson((json['focus'] as Map).cast<String, dynamic>())
          : null,
      fhirFor: json['for'] != null
          ? Reference.fromJson((json['for'] as Map).cast<String, dynamic>())
          : null,
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              (json['groupIdentifier'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      input: (json['input'] as List<dynamic>?)
          ?.map((e) => TaskInput.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      instantiatesCanonical: json['instantiatesCanonical'] as String?,
      instantiatesUri: json['instantiatesUri'] as String?,
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      intent: json['intent'] as String,
      language: json['language'] as String?,
      lastModified: json['lastModified'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map((e) => TaskOutput.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      owner: json['owner'] != null
          ? Reference.fromJson((json['owner'] as Map).cast<String, dynamic>())
          : null,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      priority: json['priority'] as String?,
      reasonCode: json['reasonCode'] != null
          ? CodeableConcept.fromJson(
              (json['reasonCode'] as Map).cast<String, dynamic>())
          : null,
      reasonReference: json['reasonReference'] != null
          ? Reference.fromJson(
              (json['reasonReference'] as Map).cast<String, dynamic>())
          : null,
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requester: json['requester'] != null
          ? Reference.fromJson(
              (json['requester'] as Map).cast<String, dynamic>())
          : null,
      restriction: json['restriction'] != null
          ? TaskRestriction.fromJson(
              (json['restriction'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              (json['statusReason'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'authoredOn': authoredOn,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'businessStatus': businessStatus?.toJson(),
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description,
        'encounter': encounter?.toJson(),
        'executionPeriod': executionPeriod?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'focus': focus?.toJson(),
        'for': fhirFor?.toJson(),
        'groupIdentifier': groupIdentifier?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'input': input?.map((e) => e.toJson()).toList(),
        'instantiatesCanonical': instantiatesCanonical,
        'instantiatesUri': instantiatesUri,
        'insurance': insurance?.map((e) => e.toJson()).toList(),
        'intent': intent,
        'language': language,
        'lastModified': lastModified,
        'location': location?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'output': output?.map((e) => e.toJson()).toList(),
        'owner': owner?.toJson(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'performerType': performerType?.map((e) => e.toJson()).toList(),
        'priority': priority,
        'reasonCode': reasonCode?.toJson(),
        'reasonReference': reasonReference?.toJson(),
        'relevantHistory': relevantHistory?.map((e) => e.toJson()).toList(),
        'requester': requester?.toJson(),
        'restriction': restriction?.toJson(),
        'status': status,
        'statusReason': statusReason?.toJson(),
        'text': text?.toJson(),
      };

  @override
  Task copyWith({
    String? authoredOn,
    List<Reference>? basedOn,
    CodeableConcept? businessStatus,
    CodeableConcept? code,
    List<Resource>? contained,
    String? description,
    Reference? encounter,
    Period? executionPeriod,
    List<Extension>? fhirExtension,
    Reference? focus,
    Reference? fhirFor,
    Identifier? groupIdentifier,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<TaskInput>? input,
    String? instantiatesCanonical,
    String? instantiatesUri,
    List<Reference>? insurance,
    String? intent,
    String? language,
    String? lastModified,
    Reference? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<TaskOutput>? output,
    Reference? owner,
    List<Reference>? partOf,
    List<CodeableConcept>? performerType,
    String? priority,
    CodeableConcept? reasonCode,
    Reference? reasonReference,
    List<Reference>? relevantHistory,
    Reference? requester,
    TaskRestriction? restriction,
    String? status,
    CodeableConcept? statusReason,
    Narrative? text,
  }) {
    return Task(
      authoredOn: authoredOn ?? this.authoredOn,
      basedOn: basedOn ?? this.basedOn,
      businessStatus: businessStatus ?? this.businessStatus,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      encounter: encounter ?? this.encounter,
      executionPeriod: executionPeriod ?? this.executionPeriod,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focus: focus ?? this.focus,
      fhirFor: fhirFor ?? this.fhirFor,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      input: input ?? this.input,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      insurance: insurance ?? this.insurance,
      intent: intent ?? this.intent,
      language: language ?? this.language,
      lastModified: lastModified ?? this.lastModified,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      output: output ?? this.output,
      owner: owner ?? this.owner,
      partOf: partOf ?? this.partOf,
      performerType: performerType ?? this.performerType,
      priority: priority ?? this.priority,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      requester: requester ?? this.requester,
      restriction: restriction ?? this.restriction,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      text: text ?? this.text,
    );
  }
}

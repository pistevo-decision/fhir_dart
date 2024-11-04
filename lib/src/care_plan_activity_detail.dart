part of '../fhir_dart.dart';

/// In-line definition of activity
/// A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know about specific resources such as procedure etc.
class CarePlanActivityDetail extends BackboneElement implements FhirResource {
  /// Detail type of activity
  /// Detailed description of the type of planned activity; e.g. what lab test, what procedure, what kind of encounter.
  /// Tends to be less relevant for activities involving particular products.  Codes should not convey negation - use "prohibited" instead.
  final CodeableConcept? code;

  /// How to consume/day?
  /// Identifies the quantity expected to be consumed in a given day.
  final Quantity? dailyAmount;

  /// Extra info describing activity to perform
  /// This provides a textual description of constraints on the intended activity occurrence, including relation to other activities.  It may also include objectives, pre-conditions and end-conditions.  Finally, it may convey specifics about the activity such as body site, method, route, etc.
  final String? description;

  /// If true, activity is prohibiting action
  /// If true, indicates that the described activity is one that must NOT be engaged in when following the plan.  If false, or missing, indicates that the described activity is one that should be engaged in when following the plan.
  /// This element is labeled as a modifier because it marks an activity as an activity that is not to be performed.
  final bool? doNotPerform;

  /// Goals this activity relates to
  /// Internal reference that identifies the goals that this activity is intended to contribute towards meeting.
  final List<Reference>? goal;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan activity.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan activity.
  /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;

  /// A description of the kind of resource the in-line definition of a care plan activity is representing.  The CarePlan.activity.detail is an in-line definition when a resource is not referenced using CarePlan.activity.reference.  For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest.
  final String?
      kind; // Possible values: 'Appointment', 'CommunicationRequest', 'DeviceRequest', 'MedicationRequest', 'NutritionOrder', 'Task', 'ServiceRequest', 'VisionPrescription'
  /// Where it should happen
  /// Identifies the facility where the activity will occur; e.g. home, hospital, specific clinic, etc.
  /// May reference a specific clinical location or may identify a type of location.
  final Reference? location;

  /// Who will be responsible?
  /// Identifies who's expected to be involved in the activity.
  /// A performer MAY also be a participant in the care plan.
  final List<Reference>? performer;

  /// What is to be administered/supplied
  /// Identifies the food, drug or other product to be consumed or supplied in the activity.
  final CodeableConcept? productCodeableConcept;

  /// What is to be administered/supplied
  /// Identifies the food, drug or other product to be consumed or supplied in the activity.
  final Reference? productReference;

  /// How much to administer/supply/consume
  /// Identifies the quantity expected to be supplied, administered or consumed by the subject.
  final Quantity? quantity;

  /// Why activity should be done or why activity was prohibited
  /// Provides the rationale that drove the inclusion of this particular activity as part of the plan or the reason why the activity was prohibited.
  /// This could be a diagnosis code.  If a full condition record exists or additional detail is needed, use reasonCondition instead.
  final List<CodeableConcept>? reasonCode;

  /// Why activity is needed
  /// Indicates another resource, such as the health condition(s), whose existence justifies this request and drove the inclusion of this particular activity as part of the plan.
  /// Conditions can be identified at the activity level that are not identified as reasons for the overall plan.
  final List<Reference>? reasonReference;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final Period? scheduledPeriod;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final String? scheduledString;

  /// When activity is to occur
  /// The period, timing or frequency upon which the described activity is to occur.
  final Timing? scheduledTiming;

  /// Identifies what progress is being made for the specific activity.
  /// Some aspects of status can be inferred based on the resources linked in actionTaken.  Note that "status" is only as current as the plan was most recently updated.
  /// The unknown code is not to be used to convey other statuses.  The unknown code should be used when one of the statuses applies, but the authoring system doesn't know the current state of the activity.
  final String
      status; // Possible values: 'not-started', 'scheduled', 'in-progress', 'on-hold', 'completed', 'cancelled', 'stopped', 'unknown', 'entered-in-error'
  /// Reason for current status
  /// Provides reason why the activity isn't yet started, is on hold, was cancelled, etc.
  /// Will generally not be present if status is "complete".  Be sure to prompt to update this (or at least remove the existing value) if the status is changed.
  final CodeableConcept? statusReason;
  CarePlanActivityDetail({
    this.code,
    this.dailyAmount,
    this.description,
    this.doNotPerform,
    super.fhirExtension,
    this.goal,
    super.id,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.kind,
    this.location,
    super.modifierExtension,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.quantity,
    this.reasonCode,
    this.reasonReference,
    this.scheduledPeriod,
    this.scheduledString,
    this.scheduledTiming,
    required this.status,
    this.statusReason,
  });

  @override
  factory CarePlanActivityDetail.fromJson(Map<String, dynamic> json) {
    return CarePlanActivityDetail(
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      dailyAmount: json['dailyAmount'] != null
          ? Quantity.fromJson(json['dailyAmount'] as Map<String, dynamic>)
          : null,
      description: json['description'] as String?,
      doNotPerform: json['doNotPerform'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      kind: json['kind'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      productCodeableConcept: json['productCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['productCodeableConcept'] as Map<String, dynamic>)
          : null,
      productReference: json['productReference'] != null
          ? Reference.fromJson(json['productReference'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      scheduledPeriod: json['scheduledPeriod'] != null
          ? Period.fromJson(json['scheduledPeriod'] as Map<String, dynamic>)
          : null,
      scheduledString: json['scheduledString'] as String?,
      scheduledTiming: json['scheduledTiming'] != null
          ? Timing.fromJson(json['scheduledTiming'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'dailyAmount': dailyAmount?.toJson(),
        'description': description,
        'doNotPerform': doNotPerform,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'goal': goal?.map((e) => e.toJson()).toList(),
        'id': id,
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'kind': kind,
        'location': location?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'performer': performer?.map((e) => e.toJson()).toList(),
        'productCodeableConcept': productCodeableConcept?.toJson(),
        'productReference': productReference?.toJson(),
        'quantity': quantity?.toJson(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'scheduledPeriod': scheduledPeriod?.toJson(),
        'scheduledString': scheduledString,
        'scheduledTiming': scheduledTiming?.toJson(),
        'status': status,
        'statusReason': statusReason?.toJson(),
      };

  @override
  CarePlanActivityDetail copyWith({
    CodeableConcept? code,
    Quantity? dailyAmount,
    String? description,
    bool? doNotPerform,
    List<Extension>? fhirExtension,
    List<Reference>? goal,
    String? id,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    String? kind,
    Reference? location,
    List<Extension>? modifierExtension,
    List<Reference>? performer,
    CodeableConcept? productCodeableConcept,
    Reference? productReference,
    Quantity? quantity,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Period? scheduledPeriod,
    String? scheduledString,
    Timing? scheduledTiming,
    String? status,
    CodeableConcept? statusReason,
  }) {
    return CarePlanActivityDetail(
      code: code ?? this.code,
      dailyAmount: dailyAmount ?? this.dailyAmount,
      description: description ?? this.description,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      goal: goal ?? this.goal,
      id: id ?? this.id,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      kind: kind ?? this.kind,
      location: location ?? this.location,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      performer: performer ?? this.performer,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      productReference: productReference ?? this.productReference,
      quantity: quantity ?? this.quantity,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      scheduledPeriod: scheduledPeriod ?? this.scheduledPeriod,
      scheduledString: scheduledString ?? this.scheduledString,
      scheduledTiming: scheduledTiming ?? this.scheduledTiming,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
    );
  }
}

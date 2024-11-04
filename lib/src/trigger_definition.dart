part of '../fhir_dart.dart';

 /// If an event is a named-event, it means the event is completely pre-coordinated, and no other information can be specified for the event. If the event is one of the data- events, the data and condition elements specify the triggering criteria. The data element specifies the structured component, and the condition element provides additional optional refinement of that structured component. If the event is periodic, the timing element defines when the event is triggered. For both data- and periodic events, a name can be provided as a shorthand for the formal semantics provided by the other elements.
 /// Base StructureDefinition for TriggerDefinition Type: A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by the type element.
class TriggerDefinition extends Element implements FhirResource {
   /// Whether the event triggers (boolean expression)
   /// A boolean-valued expression that is evaluated in the context of the container of the trigger definition and returns whether or not the trigger fires.
   /// This element can be only be specified for data type triggers and provides additional semantics for the trigger. The context available within the condition is based on the type of data event. For all events, the current resource will be available as context. In addition, for modification events, the previous resource will also be available. The expression may be inlined, or may be a simple absolute URI, which is a reference to a named expression within a logic library referenced by a library element or extension within the containing resource. If the expression is a FHIR Path expression, it evaluates in the context of a resource of one of the type identified in the data requirement, and may also refer to the variable %previous for delta comparisons on events of type data-changed, data-modified, and data-deleted which will always have the same type.
  final Expression? condition;
   /// Triggering data of the event (multiple = 'and')
   /// The triggering data of the event (if this is a data trigger). If more than one data is requirement is specified, then all the data requirements must be true.
   /// This element shall be present for any data type trigger.
  final List<DataRequirement>? data;
   /// Name or URI that identifies the event
   /// A formal name for the event. This may be an absolute URI that identifies the event formally (e.g. from a trigger registry), or a simple relative URI that identifies the event in a local context.
   /// An event name can be provided for all event types, but is required for named events. If a name is provided for a type other than named events, it is considered to be a shorthand for the semantics described by the formal description of the event.
  final String? name;
   /// Timing of the event
   /// The timing of the event (if this is a periodic trigger).
  final String? timingDate;
   /// Timing of the event
   /// The timing of the event (if this is a periodic trigger).
  final String? timingDateTime;
   /// Timing of the event
   /// The timing of the event (if this is a periodic trigger).
  final Reference? timingReference;
   /// Timing of the event
   /// The timing of the event (if this is a periodic trigger).
  final Timing? timingTiming;
   /// The type of triggering event.
  final String type; // Possible values: 'named-event', 'periodic', 'data-changed', 'data-added', 'data-modified', 'data-removed', 'data-accessed', 'data-access-ended'
  TriggerDefinition({
    this.condition,
    this.data,
    super.fhirExtension,
    super.id,
    this.name,
    this.timingDate,
    this.timingDateTime,
    this.timingReference,
    this.timingTiming,
    required this.type,
  });
  
  @override
  factory TriggerDefinition.fromJson(Map<String, dynamic> json) {
    return TriggerDefinition(
      condition: json['condition'] != null ? Expression.fromJson(json['condition'] as Map<String, dynamic>) : null,
      data: (json['data'] as List<dynamic>?)?.map((e) => DataRequirement.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      name: json['name'] as String?,
      timingDate: json['timingDate'] as String?,
      timingDateTime: json['timingDateTime'] as String?,
      timingReference: json['timingReference'] != null ? Reference.fromJson(json['timingReference'] as Map<String, dynamic>) : null,
      timingTiming: json['timingTiming'] != null ? Timing.fromJson(json['timingTiming'] as Map<String, dynamic>) : null,
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'condition': condition?.toJson(),
      'data': data?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'name': name,
      'timingDate': timingDate,
      'timingDateTime': timingDateTime,
      'timingReference': timingReference?.toJson(),
      'timingTiming': timingTiming?.toJson(),
      'type': type,
    };
  
  @override
  TriggerDefinition copyWith({
    Expression? condition,
    List<DataRequirement>? data,
    List<Extension>? fhirExtension,
    String? id,
    String? name,
    String? timingDate,
    String? timingDateTime,
    Reference? timingReference,
    Timing? timingTiming,
    String? type,
  }) {
    return TriggerDefinition(
      condition: condition ?? this.condition,
      data: data ?? this.data,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      name: name ?? this.name,
      timingDate: timingDate ?? this.timingDate,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingReference: timingReference ?? this.timingReference,
      timingTiming: timingTiming ?? this.timingTiming,
      type: type ?? this.type,
    );
  }
}

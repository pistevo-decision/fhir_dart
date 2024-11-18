part of '../fhir_dart.dart';

/// Record of delivery of what is supplied.
class SupplyDelivery extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'SupplyDelivery';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Fulfills plan, proposal or order
  /// A plan, proposal or order that is fulfilled in whole or in part by this event.
  final List<Reference>? basedOn;

  /// Where the Supply was sent
  /// Identification of the facility/location where the Supply was shipped to, as part of the dispense event.
  final Reference? destination;

  /// External identifier
  /// Identifier for the supply delivery event that is used to identify it across multiple disparate systems.
  /// This identifier is typically assigned by the dispenser, and may be used to reference the delivery when exchanging information about it with other systems.
  final List<Identifier>? identifier;

  /// When event occurred
  /// The date or time(s) the activity occurred.
  /// [The list of types may be constrained as appropriate for the type of event].
  final String? occurrenceDateTime;

  /// When event occurred
  /// The date or time(s) the activity occurred.
  /// [The list of types may be constrained as appropriate for the type of event].
  final Period? occurrencePeriod;

  /// When event occurred
  /// The date or time(s) the activity occurred.
  /// [The list of types may be constrained as appropriate for the type of event].
  final Timing? occurrenceTiming;

  /// Part of referenced event
  /// A larger event of which this particular event is a component or step.
  /// Not to be used to link an event to an Encounter - use Event.context for that.
  /// [The allowed reference resources may be adjusted as appropriate for the event resource].
  final List<Reference>? partOf;

  /// Patient for whom the item is supplied
  /// A link to a resource representing the person whom the delivered item is for.
  final Reference? patient;

  /// Who collected the Supply
  /// Identifies the person who picked up the Supply.
  final List<Reference>? receiver;

  /// A code specifying the state of the dispense event.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String?
      status; // Possible values: 'in-progress', 'completed', 'abandoned', 'entered-in-error'
  /// The item that is delivered or supplied
  /// The item that is being delivered or has been supplied.
  final SupplyDeliverySuppliedItem? suppliedItem;

  /// Dispenser
  /// The individual responsible for dispensing the medication, supplier or device.
  final Reference? supplier;

  /// Category of dispense event
  /// Indicates the type of dispensing event that is performed. Examples include: Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.
  final CodeableConcept? type;
  SupplyDelivery({
    this.basedOn,
    super.contained,
    this.destination,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.partOf,
    this.patient,
    this.receiver,
    this.status,
    this.suppliedItem,
    this.supplier,
    super.text,
    this.type,
  });

  @override
  factory SupplyDelivery.fromJson(Map<String, dynamic> json) {
    return SupplyDelivery(
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      destination: json['destination'] != null
          ? Reference.fromJson(
              (json['destination'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              (json['occurrencePeriod'] as Map).cast<String, dynamic>())
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(
              (json['occurrenceTiming'] as Map).cast<String, dynamic>())
          : null,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      patient: json['patient'] != null
          ? Reference.fromJson((json['patient'] as Map).cast<String, dynamic>())
          : null,
      receiver: (json['receiver'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String?,
      suppliedItem: json['suppliedItem'] != null
          ? SupplyDeliverySuppliedItem.fromJson(
              (json['suppliedItem'] as Map).cast<String, dynamic>())
          : null,
      supplier: json['supplier'] != null
          ? Reference.fromJson(
              (json['supplier'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'destination': destination?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrencePeriod': occurrencePeriod?.toJson(),
        'occurrenceTiming': occurrenceTiming?.toJson(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'patient': patient?.toJson(),
        'receiver': receiver?.map((e) => e.toJson()).toList(),
        'status': status,
        'suppliedItem': suppliedItem?.toJson(),
        'supplier': supplier?.toJson(),
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  SupplyDelivery copyWith({
    List<Reference>? basedOn,
    List<Resource>? contained,
    Reference? destination,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<Reference>? partOf,
    Reference? patient,
    List<Reference>? receiver,
    String? status,
    SupplyDeliverySuppliedItem? suppliedItem,
    Reference? supplier,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return SupplyDelivery(
      basedOn: basedOn ?? this.basedOn,
      contained: contained ?? this.contained,
      destination: destination ?? this.destination,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      partOf: partOf ?? this.partOf,
      patient: patient ?? this.patient,
      receiver: receiver ?? this.receiver,
      status: status ?? this.status,
      suppliedItem: suppliedItem ?? this.suppliedItem,
      supplier: supplier ?? this.supplier,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}

part of '../fhir_dart.dart';

/// A record of a request for a medication, substance or device used in the healthcare setting.
class SupplyRequest extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'SupplyRequest';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// When the request was made.
  final String? authoredOn;

  /// The kind of supply (central, non-stock, etc.)
  /// Category of supply, e.g.  central, non-stock, etc. This is used to support work flows associated with the supply process.
  final CodeableConcept? category;

  /// The origin of the supply
  /// Where the supply is expected to come from.
  final Reference? deliverFrom;

  /// The destination of the supply
  /// Where the supply is destined to go.
  final Reference? deliverTo;

  /// Business Identifier for SupplyRequest
  /// Business identifiers assigned to this SupplyRequest by the author and/or other systems. These identifiers remain constant as the resource is updated and propagates from server to server.
  /// The identifier.type element is used to distinguish between the identifiers assigned by the requester/placer and the performer/filler.
  final List<Identifier>? identifier;

  /// Medication, Substance, or Device requested to be supplied
  /// The item that is requested to be supplied. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
  /// Note that there's a difference between a prescription - an instruction to take a medication, along with a (sometimes) implicit supply, and an explicit request to supply, with no explicit instructions.
  final CodeableConcept? itemCodeableConcept;

  /// Medication, Substance, or Device requested to be supplied
  /// The item that is requested to be supplied. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
  /// Note that there's a difference between a prescription - an instruction to take a medication, along with a (sometimes) implicit supply, and an explicit request to supply, with no explicit instructions.
  final Reference? itemReference;

  /// When the request should be fulfilled.
  final String? occurrenceDateTime;

  /// When the request should be fulfilled.
  final Period? occurrencePeriod;

  /// When the request should be fulfilled.
  final Timing? occurrenceTiming;

  /// Ordered item details
  /// Specific parameters for the ordered item.  For example, the size of the indicated item.
  final List<SupplyRequestParameter>? parameter;

  /// Indicates how quickly this SupplyRequest should be addressed with respect to other requests.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// The requested amount of the item indicated
  /// The amount that is being ordered of the indicated item.
  final Quantity quantity;

  /// The reason why the supply item was requested.
  final List<CodeableConcept>? reasonCode;

  /// The reason why the supply item was requested.
  final List<Reference>? reasonReference;

  /// Individual making the request
  /// The device, practitioner, etc. who initiated the request.
  final Reference? requester;

  /// Status of the supply request.
  final String?
      status; // Possible values: 'draft', 'active', 'suspended', 'cancelled', 'completed', 'entered-in-error', 'unknown'
  /// Who is intended to fulfill the request.
  final List<Reference>? supplier;
  SupplyRequest({
    this.authoredOn,
    this.category,
    super.contained,
    this.deliverFrom,
    this.deliverTo,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.itemCodeableConcept,
    this.itemReference,
    super.language,
    super.meta,
    super.modifierExtension,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.parameter,
    this.priority,
    required this.quantity,
    this.reasonCode,
    this.reasonReference,
    this.requester,
    this.status,
    this.supplier,
    super.text,
  });

  @override
  factory SupplyRequest.fromJson(Map<String, dynamic> json) {
    return SupplyRequest(
      authoredOn: json['authoredOn'] as String?,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              (json['category'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      deliverFrom: json['deliverFrom'] != null
          ? Reference.fromJson(
              (json['deliverFrom'] as Map).cast<String, dynamic>())
          : null,
      deliverTo: json['deliverTo'] != null
          ? Reference.fromJson(
              (json['deliverTo'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['itemCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(
              (json['itemReference'] as Map).cast<String, dynamic>())
          : null,
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
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => SupplyRequestParameter.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      priority: json['priority'] as String?,
      quantity:
          Quantity.fromJson((json['quantity'] as Map).cast<String, dynamic>()),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requester: json['requester'] != null
          ? Reference.fromJson(
              (json['requester'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String?,
      supplier: (json['supplier'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'authoredOn': authoredOn,
        'category': category?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'deliverFrom': deliverFrom?.toJson(),
        'deliverTo': deliverTo?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'itemCodeableConcept': itemCodeableConcept?.toJson(),
        'itemReference': itemReference?.toJson(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrencePeriod': occurrencePeriod?.toJson(),
        'occurrenceTiming': occurrenceTiming?.toJson(),
        'parameter': parameter?.map((e) => e.toJson()).toList(),
        'priority': priority,
        'quantity': quantity.toJson(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'requester': requester?.toJson(),
        'status': status,
        'supplier': supplier?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  SupplyRequest copyWith({
    String? authoredOn,
    CodeableConcept? category,
    List<Resource>? contained,
    Reference? deliverFrom,
    Reference? deliverTo,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<SupplyRequestParameter>? parameter,
    String? priority,
    Quantity? quantity,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? requester,
    String? status,
    List<Reference>? supplier,
    Narrative? text,
  }) {
    return SupplyRequest(
      authoredOn: authoredOn ?? this.authoredOn,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      deliverFrom: deliverFrom ?? this.deliverFrom,
      deliverTo: deliverTo ?? this.deliverTo,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      parameter: parameter ?? this.parameter,
      priority: priority ?? this.priority,
      quantity: quantity ?? this.quantity,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      requester: requester ?? this.requester,
      status: status ?? this.status,
      supplier: supplier ?? this.supplier,
      text: text ?? this.text,
    );
  }
}

part of '../fhir_dart.dart';

/// The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation.
class ChargeItem extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'ChargeItem';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Account to place this charge
  /// Account into which this ChargeItems belongs.
  /// Systems posting the ChargeItems might not always be able to determine, which accounts the Items need to be places into. It is up to the postprocessing Financial System to apply internal rules to decide based on the Encounter/EpisodeOfCare/Patient/Coverage context and the type of ChargeItem, which Account is appropriate.
  final List<Reference>? account;

  /// Anatomical location, if relevant
  /// The anatomical location where the related service has been applied.
  /// Only used if not implicit in code found in Condition.code. If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [bodySite](extension-bodysite.html).  May be a summary code, or a reference to a very precise definition of the location, or both.
  final List<CodeableConcept>? bodysite;

  /// A code that identifies the charge, like a billing code.
  final CodeableConcept code;

  /// Encounter / Episode associated with event
  /// The encounter or episode of care that establishes the context for this event.
  final Reference? context;

  /// Organization that has ownership of the (potential, future) revenue
  /// The financial cost center permits the tracking of charge attribution.
  /// The costCenter could either be given as a reference to an Organization(Role) resource or as the identifier of the cost center determined by Reference.identifier.value and Reference.identifier.system, depending on use case requirements.
  final Reference? costCenter;

  /// Resource defining the code of this ChargeItem
  /// References the source of pricing information, rules of application for the code this ChargeItem uses.
  final List<String>? definitionCanonical;

  /// Defining information about the code of this charge item
  /// References the (external) source of pricing information, rules of application for the code this ChargeItem uses.
  final List<String>? definitionUri;

  /// Date the charge item was entered.
  /// The actual date when the service associated with the charge has been rendered is captured in occurrence[x].
  final String? enteredDate;

  /// Individual who was entering
  /// The device, practitioner, etc. who entered the charge item.
  /// The enterer is also the person considered responsible for factor/price overrides if applicable.
  final Reference? enterer;

  /// Factor overriding the associated rules
  /// Factor overriding the factor determined by the rules associated with the code.
  /// There is no reason to carry the factor in the instance of a ChargeItem unless special circumstances require a manual override. The factors are usually defined by a set of rules in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden.
  final num? factorOverride;

  /// Business Identifier for item
  /// Identifiers assigned to this event performer or other systems.
  final List<Identifier>? identifier;

  /// Comments made about the ChargeItem
  /// Comments made about the event by the performer, subject or other participants.
  final List<Annotation>? note;

  /// When the charged service was applied
  /// Date/time(s) or duration when the charged service was applied.
  /// The list of types may be constrained as appropriate for the type of charge item.
  final String? occurrenceDateTime;

  /// When the charged service was applied
  /// Date/time(s) or duration when the charged service was applied.
  /// The list of types may be constrained as appropriate for the type of charge item.
  final Period? occurrencePeriod;

  /// When the charged service was applied
  /// Date/time(s) or duration when the charged service was applied.
  /// The list of types may be constrained as appropriate for the type of charge item.
  final Timing? occurrenceTiming;

  /// Reason for overriding the list price/factor
  /// If the list price or the rule-based factor associated with the code is overridden, this attribute can capture a text to indicate the  reason for this action.
  /// Derived Profiles may choose to add invariants requiring this field to be populated if either priceOverride or factorOverride have been filled.
  final String? overrideReason;

  /// Part of referenced ChargeItem
  /// ChargeItems can be grouped to larger ChargeItems covering the whole set.
  final List<Reference>? partOf;

  /// Who performed charged service
  /// Indicates who or what performed or participated in the charged service.
  final List<ChargeItemPerformer>? performer;

  /// Organization providing the charged service
  /// The organization requesting the service.
  /// Practitioners and Devices can be associated with multiple organizations. It has to be made clear, on behalf of which Organization the services have been rendered.
  final Reference? performingOrganization;

  /// Price overriding the associated rules
  /// Total price of the charge overriding the list price associated with the code.
  /// There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden.
  final Money? priceOverride;

  /// Product charged
  /// Identifies the device, food, drug or other product being charged either by type code or reference to an instance.
  final CodeableConcept? productCodeableConcept;

  /// Product charged
  /// Identifies the device, food, drug or other product being charged either by type code or reference to an instance.
  final Reference? productReference;

  /// Quantity of which the charge item has been serviced.
  /// In many cases this may just be a value, if the underlying units are implicit in the definition of the charge item code.
  final Quantity? quantity;

  /// Why was the charged  service rendered?
  /// Describes why the event occurred in coded or textual form.
  /// If the application of the charge item requires a reason to be given, it can be captured here. Textual reasons can be captured using reasonCode.text.
  final List<CodeableConcept>? reason;

  /// Organization requesting the charged service
  /// The organization performing the service.
  /// The rendered Service might not be associated with a Request. This property indicates which Organization requested the services to be rendered. (In many cases, this may just be the Department associated with the Encounter.location).
  final Reference? requestingOrganization;

  /// Which rendered service is being charged?
  /// Indicated the rendered service that caused this charge.
  final List<Reference>? service;

  /// The current state of the ChargeItem.
  /// Unknown does not represent "other" - one of the defined statuses must apply.  Unknown is used when the authoring system is not sure what the current status is.
  /// This element is labeled as a modifier because the status contains the code entered-in-error that marks the charge item as not currently valid.
  final String
      status; // Possible values: 'planned', 'billable', 'not-billable', 'aborted', 'billed', 'entered-in-error', 'unknown'
  /// Individual service was done for/to
  /// The individual or set of individuals the action is being or was performed on.
  final Reference subject;

  /// Further information supporting this charge.
  final List<Reference>? supportingInformation;
  ChargeItem({
    this.account,
    this.bodysite,
    required this.code,
    super.contained,
    this.context,
    this.costCenter,
    this.definitionCanonical,
    this.definitionUri,
    this.enteredDate,
    this.enterer,
    super.fhirExtension,
    this.factorOverride,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.overrideReason,
    this.partOf,
    this.performer,
    this.performingOrganization,
    this.priceOverride,
    this.productCodeableConcept,
    this.productReference,
    this.quantity,
    this.reason,
    this.requestingOrganization,
    this.service,
    required this.status,
    required this.subject,
    this.supportingInformation,
    super.text,
  });

  @override
  factory ChargeItem.fromJson(Map<String, dynamic> json) {
    return ChargeItem(
      account: (json['account'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      bodysite: (json['bodysite'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      context: json['context'] != null
          ? Reference.fromJson((json['context'] as Map).cast<String, dynamic>())
          : null,
      costCenter: json['costCenter'] != null
          ? Reference.fromJson(
              (json['costCenter'] as Map).cast<String, dynamic>())
          : null,
      definitionCanonical: (json['definitionCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      definitionUri: (json['definitionUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      enteredDate: json['enteredDate'] as String?,
      enterer: json['enterer'] != null
          ? Reference.fromJson((json['enterer'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      factorOverride: json['factorOverride'] as num?,
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
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
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
      overrideReason: json['overrideReason'] as String?,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) =>
              ChargeItemPerformer.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      performingOrganization: json['performingOrganization'] != null
          ? Reference.fromJson(
              (json['performingOrganization'] as Map).cast<String, dynamic>())
          : null,
      priceOverride: json['priceOverride'] != null
          ? Money.fromJson(
              (json['priceOverride'] as Map).cast<String, dynamic>())
          : null,
      productCodeableConcept: json['productCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['productCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      productReference: json['productReference'] != null
          ? Reference.fromJson(
              (json['productReference'] as Map).cast<String, dynamic>())
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson((json['quantity'] as Map).cast<String, dynamic>())
          : null,
      reason: (json['reason'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requestingOrganization: json['requestingOrganization'] != null
          ? Reference.fromJson(
              (json['requestingOrganization'] as Map).cast<String, dynamic>())
          : null,
      service: (json['service'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
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
        'account': account?.map((e) => e.toJson()).toList(),
        'bodysite': bodysite?.map((e) => e.toJson()).toList(),
        'code': code.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'context': context?.toJson(),
        'costCenter': costCenter?.toJson(),
        'definitionCanonical': definitionCanonical?.map((e) => e).toList(),
        'definitionUri': definitionUri?.map((e) => e).toList(),
        'enteredDate': enteredDate,
        'enterer': enterer?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'factorOverride': factorOverride,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrencePeriod': occurrencePeriod?.toJson(),
        'occurrenceTiming': occurrenceTiming?.toJson(),
        'overrideReason': overrideReason,
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'performer': performer?.map((e) => e.toJson()).toList(),
        'performingOrganization': performingOrganization?.toJson(),
        'priceOverride': priceOverride?.toJson(),
        'productCodeableConcept': productCodeableConcept?.toJson(),
        'productReference': productReference?.toJson(),
        'quantity': quantity?.toJson(),
        'reason': reason?.map((e) => e.toJson()).toList(),
        'requestingOrganization': requestingOrganization?.toJson(),
        'service': service?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject.toJson(),
        'supportingInformation':
            supportingInformation?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  ChargeItem copyWith({
    List<Reference>? account,
    List<CodeableConcept>? bodysite,
    CodeableConcept? code,
    List<Resource>? contained,
    Reference? context,
    Reference? costCenter,
    List<String>? definitionCanonical,
    List<String>? definitionUri,
    String? enteredDate,
    Reference? enterer,
    List<Extension>? fhirExtension,
    num? factorOverride,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    String? overrideReason,
    List<Reference>? partOf,
    List<ChargeItemPerformer>? performer,
    Reference? performingOrganization,
    Money? priceOverride,
    CodeableConcept? productCodeableConcept,
    Reference? productReference,
    Quantity? quantity,
    List<CodeableConcept>? reason,
    Reference? requestingOrganization,
    List<Reference>? service,
    String? status,
    Reference? subject,
    List<Reference>? supportingInformation,
    Narrative? text,
  }) {
    return ChargeItem(
      account: account ?? this.account,
      bodysite: bodysite ?? this.bodysite,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      context: context ?? this.context,
      costCenter: costCenter ?? this.costCenter,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionUri: definitionUri ?? this.definitionUri,
      enteredDate: enteredDate ?? this.enteredDate,
      enterer: enterer ?? this.enterer,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factorOverride: factorOverride ?? this.factorOverride,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      overrideReason: overrideReason ?? this.overrideReason,
      partOf: partOf ?? this.partOf,
      performer: performer ?? this.performer,
      performingOrganization:
          performingOrganization ?? this.performingOrganization,
      priceOverride: priceOverride ?? this.priceOverride,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      productReference: productReference ?? this.productReference,
      quantity: quantity ?? this.quantity,
      reason: reason ?? this.reason,
      requestingOrganization:
          requestingOrganization ?? this.requestingOrganization,
      service: service ?? this.service,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      text: text ?? this.text,
    );
  }
}

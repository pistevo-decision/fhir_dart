part of '../fhir_dart.dart';

/// Details of a Health Insurance product/plan provided by an organization.
class InsurancePlan extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'InsurancePlan';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Product administrator
  /// An organization which administer other services such as underwriting, customer service and/or claims processing on behalf of the health insurance product owner.
  final Reference? administeredBy;

  /// Alternate names
  /// A list of alternate names that the product is known as, or was known as in the past.
  /// There are no dates associated with the alias/historic names, as this is not intended to track when names were used, but to assist in searching so that older names can still result in identifying the product/plan.
  final List<String>? alias;

  /// Contact for the product
  /// The contact for the health insurance product for a certain purpose.
  /// Where multiple contacts for the same purpose are provided there is a standard extension that can be used to determine which one is the preferred contact to use.
  final List<InsurancePlanContact>? contact;

  /// Coverage details
  /// Details about the coverage offered by the insurance product.
  final List<InsurancePlanCoverage>? coverage;

  /// Where product applies
  /// The geographic region in which a health insurance product's benefits apply.
  final List<Reference>? coverageArea;

  /// Technical endpoint
  /// The technical endpoints providing access to services operated for the health insurance product.
  final List<Reference>? endpoint;

  /// Business Identifier for Product
  /// Business identifiers assigned to this health insurance product which remain constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// Official name of the health insurance product as designated by the owner.
  /// If the name of the product/plan changes, consider putting the old name in the alias column so that it can still be located through searches.
  final String? name;

  /// What networks are Included
  /// Reference to the network included in the health insurance product.
  /// Networks are represented as a hierarchy of organization resources.
  final List<Reference>? network;

  /// Plan issuer
  /// The entity that is providing  the health insurance product and underwriting the risk.  This is typically an insurance carriers, other third-party payers, or health plan sponsors comonly referred to as 'payers'.
  final Reference? ownedBy;

  /// When the product is available
  /// The period of time that the health insurance product is available.
  final Period? period;

  /// Plan details
  /// Details about an insurance plan.
  final List<InsurancePlanPlan>? plan;

  /// The current state of the health insurance product.
  final String?
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// Kind of product
  /// The kind of health insurance product.
  final List<CodeableConcept>? type;
  InsurancePlan({
    this.administeredBy,
    this.alias,
    this.contact,
    super.contained,
    this.coverage,
    this.coverageArea,
    this.endpoint,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.network,
    this.ownedBy,
    this.period,
    this.plan,
    this.status,
    super.text,
    this.type,
  });

  @override
  factory InsurancePlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlan(
      administeredBy: json['administeredBy'] != null
          ? Reference.fromJson(
              (json['administeredBy'] as Map).cast<String, dynamic>())
          : null,
      alias:
          (json['alias'] as List<dynamic>?)?.map((e) => e as String).toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) =>
              InsurancePlanContact.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      coverage: (json['coverage'] as List<dynamic>?)
          ?.map((e) => InsurancePlanCoverage.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      name: json['name'] as String?,
      network: (json['network'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      ownedBy: json['ownedBy'] != null
          ? Reference.fromJson((json['ownedBy'] as Map).cast<String, dynamic>())
          : null,
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      plan: (json['plan'] as List<dynamic>?)
          ?.map((e) =>
              InsurancePlanPlan.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'administeredBy': administeredBy?.toJson(),
        'alias': alias?.map((e) => e).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'coverage': coverage?.map((e) => e.toJson()).toList(),
        'coverageArea': coverageArea?.map((e) => e.toJson()).toList(),
        'endpoint': endpoint?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'network': network?.map((e) => e.toJson()).toList(),
        'ownedBy': ownedBy?.toJson(),
        'period': period?.toJson(),
        'plan': plan?.map((e) => e.toJson()).toList(),
        'status': status,
        'text': text?.toJson(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  InsurancePlan copyWith({
    Reference? administeredBy,
    List<String>? alias,
    List<InsurancePlanContact>? contact,
    List<Resource>? contained,
    List<InsurancePlanCoverage>? coverage,
    List<Reference>? coverageArea,
    List<Reference>? endpoint,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<Reference>? network,
    Reference? ownedBy,
    Period? period,
    List<InsurancePlanPlan>? plan,
    String? status,
    Narrative? text,
    List<CodeableConcept>? type,
  }) {
    return InsurancePlan(
      administeredBy: administeredBy ?? this.administeredBy,
      alias: alias ?? this.alias,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      coverage: coverage ?? this.coverage,
      coverageArea: coverageArea ?? this.coverageArea,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      network: network ?? this.network,
      ownedBy: ownedBy ?? this.ownedBy,
      period: period ?? this.period,
      plan: plan ?? this.plan,
      status: status ?? this.status,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}

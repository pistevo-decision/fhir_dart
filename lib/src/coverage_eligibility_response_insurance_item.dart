part of '../fhir_dart.dart';

/// Benefits and authorization details
/// Benefits and optionally current balances, and authorization details by category or service.
class CoverageEligibilityResponseInsuranceItem extends BackboneElement
    implements FhirResource {
  /// Authorization required flag
  /// A boolean flag indicating whether a preauthorization is required prior to actual service delivery.
  final bool? authorizationRequired;

  /// Type of required supporting materials
  /// Codes or comments regarding information or actions associated with the preauthorization.
  final List<CodeableConcept>? authorizationSupporting;

  /// Preauthorization requirements endpoint
  /// A web location for obtaining requirements or descriptive information regarding the preauthorization.
  final String? authorizationUrl;

  /// Benefit Summary
  /// Benefits used to date.
  final List<CoverageEligibilityResponseInsuranceItemBenefit>? benefit;

  /// Benefit classification
  /// Code to identify the general type of benefits under which products and services are provided.
  /// Examples include Medical Care, Periodontics, Renal Dialysis, Vision Coverage.
  final CodeableConcept? category;

  /// Description of the benefit or services covered
  /// A richer description of the benefit or services covered.
  /// For example 'DENT2 covers 100% of basic, 50% of major but excludes Ortho, Implants and Cosmetic services'.
  final String? description;

  /// Excluded from the plan
  /// True if the indicated class of service is excluded from the plan, missing or False indicates the product or service is included in the coverage.
  final bool? excluded;

  /// Product or service billing modifiers
  /// Item typification or modifiers codes to convey additional context for the product or service.
  /// For example in Oral whether the treatment is cosmetic or associated with TMJ, or for Medical whether the treatment was outside the clinic or out of office hours.
  final List<CodeableConcept>? modifier;

  /// Short name for the benefit
  /// A short name or tag for the benefit.
  /// For example: MED01, or DENT2.
  final String? name;

  /// In or out of network
  /// Is a flag to indicate whether the benefits refer to in-network providers or out-of-network providers.
  final CodeableConcept? network;

  /// Billing, service, product, or drug code
  /// This contains the product, service, drug or other billing code for the item.
  /// Code to indicate the Professional Service or Product supplied (e.g. CTP, HCPCS, USCLS, ICD10, NCPDP, DIN, RxNorm, ACHI, CCI).
  final CodeableConcept? productOrService;

  /// Performing practitioner
  /// The practitioner who is eligible for the provision of the product or service.
  final Reference? provider;

  /// Annual or lifetime
  /// The term or period of the values such as 'maximum lifetime benefit' or 'maximum annual visits'.
  final CodeableConcept? term;

  /// Individual or family
  /// Indicates if the benefits apply to an individual or to the family.
  final CodeableConcept? unit;
  CoverageEligibilityResponseInsuranceItem({
    this.authorizationRequired,
    this.authorizationSupporting,
    this.authorizationUrl,
    this.benefit,
    this.category,
    this.description,
    this.excluded,
    super.fhirExtension,
    super.id,
    this.modifier,
    super.modifierExtension,
    this.name,
    this.network,
    this.productOrService,
    this.provider,
    this.term,
    this.unit,
  });

  @override
  factory CoverageEligibilityResponseInsuranceItem.fromJson(
      Map<String, dynamic> json) {
    return CoverageEligibilityResponseInsuranceItem(
      authorizationRequired: json['authorizationRequired'] as bool?,
      authorizationSupporting:
          (json['authorizationSupporting'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
      authorizationUrl: json['authorizationUrl'] as String?,
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityResponseInsuranceItemBenefit.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      description: json['description'] as String?,
      excluded: json['excluded'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      network: json['network'] != null
          ? CodeableConcept.fromJson(json['network'] as Map<String, dynamic>)
          : null,
      productOrService: json['productOrService'] != null
          ? CodeableConcept.fromJson(
              json['productOrService'] as Map<String, dynamic>)
          : null,
      provider: json['provider'] != null
          ? Reference.fromJson(json['provider'] as Map<String, dynamic>)
          : null,
      term: json['term'] != null
          ? CodeableConcept.fromJson(json['term'] as Map<String, dynamic>)
          : null,
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'authorizationRequired': authorizationRequired,
        'authorizationSupporting':
            authorizationSupporting?.map((e) => e.toJson()).toList(),
        'authorizationUrl': authorizationUrl,
        'benefit': benefit?.map((e) => e.toJson()).toList(),
        'category': category?.toJson(),
        'description': description,
        'excluded': excluded,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifier': modifier?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'network': network?.toJson(),
        'productOrService': productOrService?.toJson(),
        'provider': provider?.toJson(),
        'term': term?.toJson(),
        'unit': unit?.toJson(),
      };

  @override
  CoverageEligibilityResponseInsuranceItem copyWith({
    bool? authorizationRequired,
    List<CodeableConcept>? authorizationSupporting,
    String? authorizationUrl,
    List<CoverageEligibilityResponseInsuranceItemBenefit>? benefit,
    CodeableConcept? category,
    String? description,
    bool? excluded,
    List<Extension>? fhirExtension,
    String? id,
    List<CodeableConcept>? modifier,
    List<Extension>? modifierExtension,
    String? name,
    CodeableConcept? network,
    CodeableConcept? productOrService,
    Reference? provider,
    CodeableConcept? term,
    CodeableConcept? unit,
  }) {
    return CoverageEligibilityResponseInsuranceItem(
      authorizationRequired:
          authorizationRequired ?? this.authorizationRequired,
      authorizationSupporting:
          authorizationSupporting ?? this.authorizationSupporting,
      authorizationUrl: authorizationUrl ?? this.authorizationUrl,
      benefit: benefit ?? this.benefit,
      category: category ?? this.category,
      description: description ?? this.description,
      excluded: excluded ?? this.excluded,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      network: network ?? this.network,
      productOrService: productOrService ?? this.productOrService,
      provider: provider ?? this.provider,
      term: term ?? this.term,
      unit: unit ?? this.unit,
    );
  }
}

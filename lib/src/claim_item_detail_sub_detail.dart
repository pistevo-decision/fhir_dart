part of '../fhir_dart.dart';

/// Product or service provided
/// A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
class ClaimItemDetailSubDetail extends BackboneElement implements FhirResource {
  /// Benefit classification
  /// Code to identify the general type of benefits under which products and services are provided.
  /// Examples include Medical Care, Periodontics, Renal Dialysis, Vision Coverage.
  final CodeableConcept? category;

  /// Price scaling factor
  /// A real number that represents a multiplier used in determining the overall value of services delivered and/or goods received. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
  /// To show a 10% senior's discount, the value entered is: 0.90 (1.00 - 0.10).
  final num? factor;

  /// Service/Product billing modifiers
  /// Item typification or modifiers codes to convey additional context for the product or service.
  /// For example in Oral whether the treatment is cosmetic or associated with TMJ, or for Medical whether the treatment was outside the clinic or out of office hours.
  final List<CodeableConcept>? modifier;

  /// Total item cost
  /// The quantity times the unit price for an additional service or product or charge.
  /// For example, the formula: quantity * unitPrice * factor  = net. Quantity and factor are assumed to be 1 if not supplied.
  final Money? net;

  /// Billing, service, product, or drug code
  /// When the value is a group code then this item collects a set of related claim details, otherwise this contains the product, service, drug or other billing code for the item.
  /// If this is an actual service or product line, i.e. not a Group, then use code to indicate the Professional Service or Product supplied (e.g. CTP, HCPCS, USCLS, ICD10, NCPDP, DIN, RxNorm, ACHI, CCI). If a grouping item then use a group code to indicate the type of thing being grouped e.g. 'glasses' or 'compound'.
  final CodeableConcept productOrService;

  /// Program the product or service is provided under
  /// Identifies the program under which this may be recovered.
  /// For example: Neonatal program, child dental program or drug users recovery program.
  final List<CodeableConcept>? programCode;

  /// Count of products or services
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// Revenue or cost center code
  /// The type of revenue or cost center providing the product and/or service.
  final CodeableConcept? revenue;

  /// Item instance identifier
  /// A number to uniquely identify item entries.
  final int sequence;

  /// Unique device identifier
  /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;

  /// Fee, charge or cost per item
  /// If the item is not a group then this is the fee for the product or service, otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;
  ClaimItemDetailSubDetail({
    this.category,
    super.fhirExtension,
    this.factor,
    super.id,
    this.modifier,
    super.modifierExtension,
    this.net,
    required this.productOrService,
    this.programCode,
    this.quantity,
    this.revenue,
    required this.sequence,
    this.udi,
    this.unitPrice,
  });

  @override
  factory ClaimItemDetailSubDetail.fromJson(Map<String, dynamic> json) {
    return ClaimItemDetailSubDetail(
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      revenue: json['revenue'] != null
          ? CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>)
          : null,
      sequence: json['sequence'] as int,
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'category': category?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'factor': factor,
        'id': id,
        'modifier': modifier?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'net': net?.toJson(),
        'productOrService': productOrService.toJson(),
        'programCode': programCode?.map((e) => e.toJson()).toList(),
        'quantity': quantity?.toJson(),
        'revenue': revenue?.toJson(),
        'sequence': sequence,
        'udi': udi?.map((e) => e.toJson()).toList(),
        'unitPrice': unitPrice?.toJson(),
      };

  @override
  ClaimItemDetailSubDetail copyWith({
    CodeableConcept? category,
    List<Extension>? fhirExtension,
    num? factor,
    String? id,
    List<CodeableConcept>? modifier,
    List<Extension>? modifierExtension,
    Money? net,
    CodeableConcept? productOrService,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    CodeableConcept? revenue,
    int? sequence,
    List<Reference>? udi,
    Money? unitPrice,
  }) {
    return ClaimItemDetailSubDetail(
      category: category ?? this.category,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factor: factor ?? this.factor,
      id: id ?? this.id,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      net: net ?? this.net,
      productOrService: productOrService ?? this.productOrService,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      revenue: revenue ?? this.revenue,
      sequence: sequence ?? this.sequence,
      udi: udi ?? this.udi,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}

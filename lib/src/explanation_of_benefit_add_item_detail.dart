part of '../fhir_dart.dart';

 /// Insurer added line items
 /// The second-tier service adjudications for payor added services.
class ExplanationOfBenefitAddItemDetail extends BackboneElement implements FhirResource {
   /// Added items adjudication
   /// The adjudication results.
  final List<ExplanationOfBenefitItemAdjudication>? adjudication;
   /// Price scaling factor
   /// A real number that represents a multiplier used in determining the overall value of services delivered and/or goods received. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
   /// To show a 10% senior's discount, the value entered is: 0.90 (1.00 - 0.10).
  final num? factor;
   /// Service/Product billing modifiers
   /// Item typification or modifiers codes to convey additional context for the product or service.
   /// For example, in Oral whether the treatment is cosmetic or associated with TMJ, or for Medical whether the treatment was outside the clinic or out of office hours.
  final List<CodeableConcept>? modifier;
   /// Total item cost
   /// The quantity times the unit price for an additional service or product or charge.
   /// For example, the formula: quantity * unitPrice * factor  = net. Quantity and factor are assumed to be 1 if not supplied.
  final Money? net;
   /// Applicable note numbers
   /// The numbers associated with notes below which apply to the adjudication of this item.
  final List<int>? noteNumber;
   /// Billing, service, product, or drug code
   /// When the value is a group code then this item collects a set of related claim details, otherwise this contains the product, service, drug or other billing code for the item.
   /// If this is an actual service or product line, i.e. not a Group, then use code to indicate the Professional Service or Product supplied (e.g. CTP, HCPCS, USCLS, ICD10, NCPDP, DIN, RxNorm, ACHI, CCI). If a grouping item then use a group code to indicate the type of thing being grouped e.g. 'glasses' or 'compound'.
  final CodeableConcept productOrService;
   /// Count of products or services
   /// The number of repetitions of a service or product.
  final Quantity? quantity;
   /// Insurer added line items
   /// The third-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitAddItemDetailSubDetail>? subDetail;
   /// Fee, charge or cost per item
   /// If the item is not a group then this is the fee for the product or service, otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;
  ExplanationOfBenefitAddItemDetail({
    this.adjudication,
    super.fhirExtension,
    this.factor,
    super.id,
    this.modifier,
    super.modifierExtension,
    this.net,
    this.noteNumber,
    required this.productOrService,
    this.quantity,
    this.subDetail,
    this.unitPrice,
  });
  
  @override
  factory ExplanationOfBenefitAddItemDetail.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAddItemDetail(
      adjudication: (json['adjudication'] as List<dynamic>?)?.map((e) => ExplanationOfBenefitItemAdjudication.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      modifier: (json['modifier'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      net: json['net'] != null ? Money.fromJson(json['net'] as Map<String, dynamic>) : null,
      noteNumber: (json['noteNumber'] as List<dynamic>?)?.map((e) => e as int).toList(),
      productOrService: CodeableConcept.fromJson(json['productOrService'] as Map<String, dynamic>),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
      subDetail: (json['subDetail'] as List<dynamic>?)?.map((e) => ExplanationOfBenefitAddItemDetailSubDetail.fromJson(e as Map<String, dynamic>)).toList(),
      unitPrice: json['unitPrice'] != null ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'adjudication': adjudication?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'factor': factor,
      'id': id,
      'modifier': modifier?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'net': net?.toJson(),
      'noteNumber': noteNumber?.map((e) => e).toList(),
      'productOrService': productOrService.toJson(),
      'quantity': quantity?.toJson(),
      'subDetail': subDetail?.map((e) => e.toJson()).toList(),
      'unitPrice': unitPrice?.toJson(),
    };
  
  @override
  ExplanationOfBenefitAddItemDetail copyWith({
    List<ExplanationOfBenefitItemAdjudication>? adjudication,
    List<Extension>? fhirExtension,
    num? factor,
    String? id,
    List<CodeableConcept>? modifier,
    List<Extension>? modifierExtension,
    Money? net,
    List<int>? noteNumber,
    CodeableConcept? productOrService,
    Quantity? quantity,
    List<ExplanationOfBenefitAddItemDetailSubDetail>? subDetail,
    Money? unitPrice,
  }) {
    return ExplanationOfBenefitAddItemDetail(
      adjudication: adjudication ?? this.adjudication,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factor: factor ?? this.factor,
      id: id ?? this.id,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      productOrService: productOrService ?? this.productOrService,
      quantity: quantity ?? this.quantity,
      subDetail: subDetail ?? this.subDetail,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}

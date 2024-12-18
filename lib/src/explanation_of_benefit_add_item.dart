part of '../fhir_dart.dart';

/// Insurer added line items
/// The first-tier service adjudications for payor added product or service lines.
class ExplanationOfBenefitAddItem extends BackboneElement
    implements FhirResource {
  /// Added items adjudication
  /// The adjudication results.
  final List<ExplanationOfBenefitItemAdjudication>? adjudication;

  /// Anatomical location
  /// Physical service site on the patient (limb, tooth, etc.).
  /// For example, providing a tooth code allows an insurer to identify a provider performing a filling on a tooth that was previously removed.
  final CodeableConcept? bodySite;

  /// Insurer added line items
  /// The second-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitAddItemDetail>? detail;

  /// Detail sequence number
  /// The sequence number of the details within the claim item which this line is intended to replace.
  final List<int>? detailSequence;

  /// Price scaling factor
  /// A real number that represents a multiplier used in determining the overall value of services delivered and/or goods received. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
  /// To show a 10% senior's discount, the value entered is: 0.90 (1.00 - 0.10).
  final num? factor;

  /// Item sequence number
  /// Claim items which this service line is intended to replace.
  final List<int>? itemSequence;

  /// Place of service or where product was supplied
  /// Where the product or service was provided.
  final Address? locationAddress;

  /// Place of service or where product was supplied
  /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;

  /// Place of service or where product was supplied
  /// Where the product or service was provided.
  final Reference? locationReference;

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

  /// Program the product or service is provided under
  /// Identifies the program under which this may be recovered.
  /// For example: Neonatal program, child dental program or drug users recovery program.
  final List<CodeableConcept>? programCode;

  /// Authorized providers
  /// The providers who are authorized for the services rendered to the patient.
  final List<Reference>? provider;

  /// Count of products or services
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// Date or dates of service or product delivery
  /// The date or dates when the service or product was supplied, performed or completed.
  final String? servicedDate;

  /// Date or dates of service or product delivery
  /// The date or dates when the service or product was supplied, performed or completed.
  final Period? servicedPeriod;

  /// Subdetail sequence number
  /// The sequence number of the sub-details woithin the details within the claim item which this line is intended to replace.
  final List<int>? subDetailSequence;

  /// Anatomical sub-location
  /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  final List<CodeableConcept>? subSite;

  /// Fee, charge or cost per item
  /// If the item is not a group then this is the fee for the product or service, otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;
  ExplanationOfBenefitAddItem({
    this.adjudication,
    this.bodySite,
    this.detail,
    this.detailSequence,
    super.fhirExtension,
    this.factor,
    super.id,
    this.itemSequence,
    this.locationAddress,
    this.locationCodeableConcept,
    this.locationReference,
    this.modifier,
    super.modifierExtension,
    this.net,
    this.noteNumber,
    required this.productOrService,
    this.programCode,
    this.provider,
    this.quantity,
    this.servicedDate,
    this.servicedPeriod,
    this.subDetailSequence,
    this.subSite,
    this.unitPrice,
  });

  @override
  factory ExplanationOfBenefitAddItem.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAddItem(
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitItemAdjudication.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              (json['bodySite'] as Map).cast<String, dynamic>())
          : null,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAddItemDetail.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      detailSequence: (json['detailSequence'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      itemSequence: (json['itemSequence'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(
              (json['locationAddress'] as Map).cast<String, dynamic>())
          : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['locationCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              (json['locationReference'] as Map).cast<String, dynamic>())
          : null,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      net: json['net'] != null
          ? Money.fromJson((json['net'] as Map).cast<String, dynamic>())
          : null,
      noteNumber:
          (json['noteNumber'] as List<dynamic>?)?.map((e) => e as int).toList(),
      productOrService: CodeableConcept.fromJson(
          (json['productOrService'] as Map).cast<String, dynamic>()),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      provider: (json['provider'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      quantity: json['quantity'] != null
          ? Quantity.fromJson((json['quantity'] as Map).cast<String, dynamic>())
          : null,
      servicedDate: json['servicedDate'] as String?,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(
              (json['servicedPeriod'] as Map).cast<String, dynamic>())
          : null,
      subDetailSequence: (json['subDetailSequence'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson((json['unitPrice'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'adjudication': adjudication?.map((e) => e.toJson()).toList(),
        'bodySite': bodySite?.toJson(),
        'detail': detail?.map((e) => e.toJson()).toList(),
        'detailSequence': detailSequence?.map((e) => e).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'factor': factor,
        'id': id,
        'itemSequence': itemSequence?.map((e) => e).toList(),
        'locationAddress': locationAddress?.toJson(),
        'locationCodeableConcept': locationCodeableConcept?.toJson(),
        'locationReference': locationReference?.toJson(),
        'modifier': modifier?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'net': net?.toJson(),
        'noteNumber': noteNumber?.map((e) => e).toList(),
        'productOrService': productOrService.toJson(),
        'programCode': programCode?.map((e) => e.toJson()).toList(),
        'provider': provider?.map((e) => e.toJson()).toList(),
        'quantity': quantity?.toJson(),
        'servicedDate': servicedDate,
        'servicedPeriod': servicedPeriod?.toJson(),
        'subDetailSequence': subDetailSequence?.map((e) => e).toList(),
        'subSite': subSite?.map((e) => e.toJson()).toList(),
        'unitPrice': unitPrice?.toJson(),
      };

  @override
  ExplanationOfBenefitAddItem copyWith({
    List<ExplanationOfBenefitItemAdjudication>? adjudication,
    CodeableConcept? bodySite,
    List<ExplanationOfBenefitAddItemDetail>? detail,
    List<int>? detailSequence,
    List<Extension>? fhirExtension,
    num? factor,
    String? id,
    List<int>? itemSequence,
    Address? locationAddress,
    CodeableConcept? locationCodeableConcept,
    Reference? locationReference,
    List<CodeableConcept>? modifier,
    List<Extension>? modifierExtension,
    Money? net,
    List<int>? noteNumber,
    CodeableConcept? productOrService,
    List<CodeableConcept>? programCode,
    List<Reference>? provider,
    Quantity? quantity,
    String? servicedDate,
    Period? servicedPeriod,
    List<int>? subDetailSequence,
    List<CodeableConcept>? subSite,
    Money? unitPrice,
  }) {
    return ExplanationOfBenefitAddItem(
      adjudication: adjudication ?? this.adjudication,
      bodySite: bodySite ?? this.bodySite,
      detail: detail ?? this.detail,
      detailSequence: detailSequence ?? this.detailSequence,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factor: factor ?? this.factor,
      id: id ?? this.id,
      itemSequence: itemSequence ?? this.itemSequence,
      locationAddress: locationAddress ?? this.locationAddress,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationReference: locationReference ?? this.locationReference,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      productOrService: productOrService ?? this.productOrService,
      programCode: programCode ?? this.programCode,
      provider: provider ?? this.provider,
      quantity: quantity ?? this.quantity,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      subSite: subSite ?? this.subSite,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}

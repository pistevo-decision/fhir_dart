part of '../fhir_dart.dart';

 /// Product or service provided
 /// A claim line. Either a simple  product or service or a 'group' of details which can each be a simple items or groups of sub-details.
class ClaimItem extends BackboneElement implements FhirResource {
   /// Anatomical location
   /// Physical service site on the patient (limb, tooth, etc.).
   /// For example: Providing a tooth code, allows an insurer to identify a provider performing a filling on a tooth that was previously removed.
  final CodeableConcept? bodySite;
   /// Applicable careTeam members
   /// CareTeam members related to this service or product.
  final List<int>? careTeamSequence;
   /// Benefit classification
   /// Code to identify the general type of benefits under which products and services are provided.
   /// Examples include Medical Care, Periodontics, Renal Dialysis, Vision Coverage.
  final CodeableConcept? category;
   /// Product or service provided
   /// A claim detail line. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
  final List<ClaimItemDetail>? detail;
   /// Applicable diagnoses
   /// Diagnosis applicable for this service or product.
  final List<int>? diagnosisSequence;
   /// Encounters related to this billed item
   /// The Encounters during which this Claim was created or to which the creation of this record is tightly associated.
   /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.
  final List<Reference>? encounter;
   /// Price scaling factor
   /// A real number that represents a multiplier used in determining the overall value of services delivered and/or goods received. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
   /// To show a 10% senior's discount, the value entered is: 0.90 (1.00 - 0.10).
  final num? factor;
   /// Applicable exception and supporting information
   /// Exceptions, special conditions and supporting information applicable for this service or product.
  final List<int>? informationSequence;
   /// Place of service or where product was supplied
   /// Where the product or service was provided.
  final Address? locationAddress;
   /// Place of service or where product was supplied
   /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;
   /// Place of service or where product was supplied
   /// Where the product or service was provided.
  final Reference? locationReference;
   /// Product or service billing modifiers
   /// Item typification or modifiers codes to convey additional context for the product or service.
   /// For example in Oral whether the treatment is cosmetic or associated with TMJ, or for Medical whether the treatment was outside the clinic or outside of office hours.
  final List<CodeableConcept>? modifier;
   /// Total item cost
   /// The quantity times the unit price for an additional service or product or charge.
   /// For example, the formula: quantity * unitPrice * factor  = net. Quantity and factor are assumed to be 1 if not supplied.
  final Money? net;
   /// Applicable procedures
   /// Procedures applicable for this service or product.
  final List<int>? procedureSequence;
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
   /// Date or dates of service or product delivery
   /// The date or dates when the service or product was supplied, performed or completed.
  final String? servicedDate;
   /// Date or dates of service or product delivery
   /// The date or dates when the service or product was supplied, performed or completed.
  final Period? servicedPeriod;
   /// Anatomical sub-location
   /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  final List<CodeableConcept>? subSite;
   /// Unique device identifier
   /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;
   /// Fee, charge or cost per item
   /// If the item is not a group then this is the fee for the product or service, otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;
  ClaimItem({
    this.bodySite,
    this.careTeamSequence,
    this.category,
    this.detail,
    this.diagnosisSequence,
    this.encounter,
    super.fhirExtension,
    this.factor,
    super.id,
    this.informationSequence,
    this.locationAddress,
    this.locationCodeableConcept,
    this.locationReference,
    this.modifier,
    super.modifierExtension,
    this.net,
    this.procedureSequence,
    required this.productOrService,
    this.programCode,
    this.quantity,
    this.revenue,
    required this.sequence,
    this.servicedDate,
    this.servicedPeriod,
    this.subSite,
    this.udi,
    this.unitPrice,
  });
  
  @override
  factory ClaimItem.fromJson(Map<String, dynamic> json) {
    return ClaimItem(
      bodySite: json['bodySite'] != null ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>) : null,
      careTeamSequence: (json['careTeamSequence'] as List<dynamic>?)?.map((e) => e as int).toList(),
      category: json['category'] != null ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>) : null,
      detail: (json['detail'] as List<dynamic>?)?.map((e) => ClaimItemDetail.fromJson(e as Map<String, dynamic>)).toList(),
      diagnosisSequence: (json['diagnosisSequence'] as List<dynamic>?)?.map((e) => e as int).toList(),
      encounter: (json['encounter'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      informationSequence: (json['informationSequence'] as List<dynamic>?)?.map((e) => e as int).toList(),
      locationAddress: json['locationAddress'] != null ? Address.fromJson(json['locationAddress'] as Map<String, dynamic>) : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null ? CodeableConcept.fromJson(json['locationCodeableConcept'] as Map<String, dynamic>) : null,
      locationReference: json['locationReference'] != null ? Reference.fromJson(json['locationReference'] as Map<String, dynamic>) : null,
      modifier: (json['modifier'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      net: json['net'] != null ? Money.fromJson(json['net'] as Map<String, dynamic>) : null,
      procedureSequence: (json['procedureSequence'] as List<dynamic>?)?.map((e) => e as int).toList(),
      productOrService: CodeableConcept.fromJson(json['productOrService'] as Map<String, dynamic>),
      programCode: (json['programCode'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
      revenue: json['revenue'] != null ? CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>) : null,
      sequence: json['sequence'] as int,
      servicedDate: json['servicedDate'] as String?,
      servicedPeriod: json['servicedPeriod'] != null ? Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>) : null,
      subSite: (json['subSite'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      udi: (json['udi'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      unitPrice: json['unitPrice'] != null ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'bodySite': bodySite?.toJson(),
      'careTeamSequence': careTeamSequence?.map((e) => e).toList(),
      'category': category?.toJson(),
      'detail': detail?.map((e) => e.toJson()).toList(),
      'diagnosisSequence': diagnosisSequence?.map((e) => e).toList(),
      'encounter': encounter?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'factor': factor,
      'id': id,
      'informationSequence': informationSequence?.map((e) => e).toList(),
      'locationAddress': locationAddress?.toJson(),
      'locationCodeableConcept': locationCodeableConcept?.toJson(),
      'locationReference': locationReference?.toJson(),
      'modifier': modifier?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'net': net?.toJson(),
      'procedureSequence': procedureSequence?.map((e) => e).toList(),
      'productOrService': productOrService.toJson(),
      'programCode': programCode?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
      'revenue': revenue?.toJson(),
      'sequence': sequence,
      'servicedDate': servicedDate,
      'servicedPeriod': servicedPeriod?.toJson(),
      'subSite': subSite?.map((e) => e.toJson()).toList(),
      'udi': udi?.map((e) => e.toJson()).toList(),
      'unitPrice': unitPrice?.toJson(),
    };
  
  @override
  ClaimItem copyWith({
    CodeableConcept? bodySite,
    List<int>? careTeamSequence,
    CodeableConcept? category,
    List<ClaimItemDetail>? detail,
    List<int>? diagnosisSequence,
    List<Reference>? encounter,
    List<Extension>? fhirExtension,
    num? factor,
    String? id,
    List<int>? informationSequence,
    Address? locationAddress,
    CodeableConcept? locationCodeableConcept,
    Reference? locationReference,
    List<CodeableConcept>? modifier,
    List<Extension>? modifierExtension,
    Money? net,
    List<int>? procedureSequence,
    CodeableConcept? productOrService,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    CodeableConcept? revenue,
    int? sequence,
    String? servicedDate,
    Period? servicedPeriod,
    List<CodeableConcept>? subSite,
    List<Reference>? udi,
    Money? unitPrice,
  }) {
    return ClaimItem(
      bodySite: bodySite ?? this.bodySite,
      careTeamSequence: careTeamSequence ?? this.careTeamSequence,
      category: category ?? this.category,
      detail: detail ?? this.detail,
      diagnosisSequence: diagnosisSequence ?? this.diagnosisSequence,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factor: factor ?? this.factor,
      id: id ?? this.id,
      informationSequence: informationSequence ?? this.informationSequence,
      locationAddress: locationAddress ?? this.locationAddress,
      locationCodeableConcept: locationCodeableConcept ?? this.locationCodeableConcept,
      locationReference: locationReference ?? this.locationReference,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      net: net ?? this.net,
      procedureSequence: procedureSequence ?? this.procedureSequence,
      productOrService: productOrService ?? this.productOrService,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      revenue: revenue ?? this.revenue,
      sequence: sequence ?? this.sequence,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      subSite: subSite ?? this.subSite,
      udi: udi ?? this.udi,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}

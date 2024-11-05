part of '../fhir_dart.dart';

/// Item to be evaluated for eligibiity
/// Service categories or billable services for which benefit details and/or an authorization prior to service delivery may be required by the payor.
class CoverageEligibilityRequestItem extends BackboneElement
    implements FhirResource {
  /// Benefit classification
  /// Code to identify the general type of benefits under which products and services are provided.
  /// Examples include Medical Care, Periodontics, Renal Dialysis, Vision Coverage.
  final CodeableConcept? category;

  /// Product or service details
  /// The plan/proposal/order describing the proposed service in detail.
  final List<Reference>? detail;

  /// Applicable diagnosis
  /// Patient diagnosis for which care is sought.
  final List<CoverageEligibilityRequestItemDiagnosis>? diagnosis;

  /// Servicing facility
  /// Facility where the services will be provided.
  final Reference? facility;

  /// Product or service billing modifiers
  /// Item typification or modifiers codes to convey additional context for the product or service.
  /// For example in Oral whether the treatment is cosmetic or associated with TMJ, or for Medical whether the treatment was outside the clinic or out of office hours.
  final List<CodeableConcept>? modifier;

  /// Billing, service, product, or drug code
  /// This contains the product, service, drug or other billing code for the item.
  /// Code to indicate the Professional Service or Product supplied (e.g. CTP, HCPCS, USCLS, ICD10, NCPDP, DIN, RxNorm, ACHI, CCI).
  final CodeableConcept? productOrService;

  /// Perfoming practitioner
  /// The practitioner who is responsible for the product or service to be rendered to the patient.
  final Reference? provider;

  /// Count of products or services
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// Applicable exception or supporting information
  /// Exceptions, special conditions and supporting information applicable for this service or product line.
  final List<int>? supportingInfoSequence;

  /// Fee, charge or cost per item
  /// The amount charged to the patient by the provider for a single unit.
  final Money? unitPrice;
  CoverageEligibilityRequestItem({
    this.category,
    this.detail,
    this.diagnosis,
    super.fhirExtension,
    this.facility,
    super.id,
    this.modifier,
    super.modifierExtension,
    this.productOrService,
    this.provider,
    this.quantity,
    this.supportingInfoSequence,
    this.unitPrice,
  });

  @override
  factory CoverageEligibilityRequestItem.fromJson(Map<String, dynamic> json) {
    return CoverageEligibilityRequestItem(
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              (json['category'] as Map).cast<String, dynamic>())
          : null,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityRequestItemDiagnosis.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      facility: json['facility'] != null
          ? Reference.fromJson(
              (json['facility'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      productOrService: json['productOrService'] != null
          ? CodeableConcept.fromJson(
              (json['productOrService'] as Map).cast<String, dynamic>())
          : null,
      provider: json['provider'] != null
          ? Reference.fromJson(
              (json['provider'] as Map).cast<String, dynamic>())
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson((json['quantity'] as Map).cast<String, dynamic>())
          : null,
      supportingInfoSequence: (json['supportingInfoSequence'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson((json['unitPrice'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'category': category?.toJson(),
        'detail': detail?.map((e) => e.toJson()).toList(),
        'diagnosis': diagnosis?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'facility': facility?.toJson(),
        'id': id,
        'modifier': modifier?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'productOrService': productOrService?.toJson(),
        'provider': provider?.toJson(),
        'quantity': quantity?.toJson(),
        'supportingInfoSequence':
            supportingInfoSequence?.map((e) => e).toList(),
        'unitPrice': unitPrice?.toJson(),
      };

  @override
  CoverageEligibilityRequestItem copyWith({
    CodeableConcept? category,
    List<Reference>? detail,
    List<CoverageEligibilityRequestItemDiagnosis>? diagnosis,
    List<Extension>? fhirExtension,
    Reference? facility,
    String? id,
    List<CodeableConcept>? modifier,
    List<Extension>? modifierExtension,
    CodeableConcept? productOrService,
    Reference? provider,
    Quantity? quantity,
    List<int>? supportingInfoSequence,
    Money? unitPrice,
  }) {
    return CoverageEligibilityRequestItem(
      category: category ?? this.category,
      detail: detail ?? this.detail,
      diagnosis: diagnosis ?? this.diagnosis,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      facility: facility ?? this.facility,
      id: id ?? this.id,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      provider: provider ?? this.provider,
      quantity: quantity ?? this.quantity,
      supportingInfoSequence:
          supportingInfoSequence ?? this.supportingInfoSequence,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}

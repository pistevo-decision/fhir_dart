part of '../fhir_dart.dart';

/// Patient insurance information
/// Financial instruments for reimbursement for the health care products and services.
/// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
class CoverageEligibilityResponseInsurance extends BackboneElement
    implements FhirResource {
  /// When the benefits are applicable
  /// The term of the benefits documented in this response.
  final Period? benefitPeriod;

  /// Insurance information
  /// Reference to the insurance card level information contained in the Coverage resource. The coverage issuing insurer will use these details to locate the patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// Coverage inforce indicator
  /// Flag indicating if the coverage provided is inforce currently if no service date(s) specified or for the whole duration of the service dates.
  final bool? inforce;

  /// Benefits and authorization details
  /// Benefits and optionally current balances, and authorization details by category or service.
  final List<CoverageEligibilityResponseInsuranceItem>? item;
  CoverageEligibilityResponseInsurance({
    this.benefitPeriod,
    required this.coverage,
    super.fhirExtension,
    super.id,
    this.inforce,
    this.item,
    super.modifierExtension,
  });

  @override
  factory CoverageEligibilityResponseInsurance.fromJson(
      Map<String, dynamic> json) {
    return CoverageEligibilityResponseInsurance(
      benefitPeriod: json['benefitPeriod'] != null
          ? Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>)
          : null,
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      inforce: json['inforce'] as bool?,
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityResponseInsuranceItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'benefitPeriod': benefitPeriod?.toJson(),
        'coverage': coverage.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'inforce': inforce,
        'item': item?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  CoverageEligibilityResponseInsurance copyWith({
    Period? benefitPeriod,
    Reference? coverage,
    List<Extension>? fhirExtension,
    String? id,
    bool? inforce,
    List<CoverageEligibilityResponseInsuranceItem>? item,
    List<Extension>? modifierExtension,
  }) {
    return CoverageEligibilityResponseInsurance(
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      coverage: coverage ?? this.coverage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      inforce: inforce ?? this.inforce,
      item: item ?? this.item,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

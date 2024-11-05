part of '../fhir_dart.dart';

/// Patient insurance information
/// Financial instruments for reimbursement for the health care products and services specified on the claim.
/// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'Coverage.subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
class ExplanationOfBenefitInsurance extends BackboneElement
    implements FhirResource {
  /// Insurance information
  /// Reference to the insurance card level information contained in the Coverage resource. The coverage issuing insurer will use these details to locate the patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// Coverage to be used for adjudication
  /// A flag to indicate that this Coverage is to be used for adjudication of this claim when set to true.
  /// A patient may (will) have multiple insurance policies which provide reimbursement for healthcare services and products. For example, a person may also be covered by their spouse's policy and both appear in the list (and may be from the same insurer). This flag will be set to true for only one of the listed policies and that policy will be used for adjudicating this claim. Other claims would be created to request adjudication against the other listed policies.
  final bool focal;

  /// Prior authorization reference number
  /// Reference numbers previously provided by the insurer to the provider to be quoted on subsequent claims containing services or products related to the prior authorization.
  /// This value is an alphanumeric string that may be provided over the phone, via text, via paper, or within a ClaimResponse resource and is not a FHIR Identifier.
  final List<String>? preAuthRef;
  ExplanationOfBenefitInsurance({
    required this.coverage,
    super.fhirExtension,
    required this.focal,
    super.id,
    super.modifierExtension,
    this.preAuthRef,
  });

  @override
  factory ExplanationOfBenefitInsurance.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitInsurance(
      coverage:
          Reference.fromJson((json['coverage'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      focal: json['focal'] as bool,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      preAuthRef: (json['preAuthRef'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'coverage': coverage.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'focal': focal,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'preAuthRef': preAuthRef?.map((e) => e).toList(),
      };

  @override
  ExplanationOfBenefitInsurance copyWith({
    Reference? coverage,
    List<Extension>? fhirExtension,
    bool? focal,
    String? id,
    List<Extension>? modifierExtension,
    List<String>? preAuthRef,
  }) {
    return ExplanationOfBenefitInsurance(
      coverage: coverage ?? this.coverage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focal: focal ?? this.focal,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      preAuthRef: preAuthRef ?? this.preAuthRef,
    );
  }
}

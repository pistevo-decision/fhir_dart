part of '../fhir_dart.dart';

/// Patient insurance information
/// Financial instruments for reimbursement for the health care products and services specified on the claim.
/// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
class ClaimResponseInsurance extends BackboneElement implements FhirResource {
  /// Additional provider contract number
  /// A business agreement number established between the provider and the insurer for special business processing purposes.
  final String? businessArrangement;

  /// Adjudication results
  /// The result of the adjudication of the line items for the Coverage specified in this insurance.
  /// Must not be specified when 'focal=true' for this insurance.
  final Reference? claimResponse;

  /// Insurance information
  /// Reference to the insurance card level information contained in the Coverage resource. The coverage issuing insurer will use these details to locate the patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// Coverage to be used for adjudication
  /// A flag to indicate that this Coverage is to be used for adjudication of this claim when set to true.
  /// A patient may (will) have multiple insurance policies which provide reimbursement for healthcare services and products. For example a person may also be covered by their spouse's policy and both appear in the list (and may be from the same insurer). This flag will be set to true for only one of the listed policies and that policy will be used for adjudicating this claim. Other claims would be created to request adjudication against the other listed policies.
  final bool focal;

  /// Insurance instance identifier
  /// A number to uniquely identify insurance entries and provide a sequence of coverages to convey coordination of benefit order.
  final int sequence;
  ClaimResponseInsurance({
    this.businessArrangement,
    this.claimResponse,
    required this.coverage,
    super.fhirExtension,
    required this.focal,
    super.id,
    super.modifierExtension,
    required this.sequence,
  });

  @override
  factory ClaimResponseInsurance.fromJson(Map<String, dynamic> json) {
    return ClaimResponseInsurance(
      businessArrangement: json['businessArrangement'] as String?,
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(
              (json['claimResponse'] as Map).cast<String, dynamic>())
          : null,
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
      sequence: json['sequence'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'businessArrangement': businessArrangement,
        'claimResponse': claimResponse?.toJson(),
        'coverage': coverage.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'focal': focal,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'sequence': sequence,
      };

  @override
  ClaimResponseInsurance copyWith({
    String? businessArrangement,
    Reference? claimResponse,
    Reference? coverage,
    List<Extension>? fhirExtension,
    bool? focal,
    String? id,
    List<Extension>? modifierExtension,
    int? sequence,
  }) {
    return ClaimResponseInsurance(
      businessArrangement: businessArrangement ?? this.businessArrangement,
      claimResponse: claimResponse ?? this.claimResponse,
      coverage: coverage ?? this.coverage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focal: focal ?? this.focal,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
    );
  }
}

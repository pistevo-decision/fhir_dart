part of '../fhir_dart.dart';

/// The party(s) that are responsible for covering the payment of this account, and what order should they be applied to the account.
/// Typically. this may be some form of insurance, internal charges, or self-pay.
/// Local or jurisdictional business rules may determine which coverage covers which types of billable items charged to the account, and in which order.
/// Where the order is important, a local/jurisdictional extension may be defined to specify the order for the type of charge.
class AccountCoverage extends BackboneElement implements FhirResource {
  /// The party(s), such as insurances, that may contribute to the payment of this account
  /// The party(s) that contribute to payment (or part of) of the charges applied to this account (including self-pay).
  /// A coverage may only be responsible for specific types of charges, and the sequence of the coverages in the account could be important when processing billing.
  final Reference coverage;

  /// The priority of the coverage in the context of this account.
  /// It is common in some jurisdictions for there to be multiple coverages allocated to an account, and a sequence is required to order the settling of the account (often with insurance claiming).
  final int? priority;
  AccountCoverage({
    required this.coverage,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.priority,
  });

  @override
  factory AccountCoverage.fromJson(Map<String, dynamic> json) {
    return AccountCoverage(
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      priority: json['priority'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'coverage': coverage.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'priority': priority,
      };

  @override
  AccountCoverage copyWith({
    Reference? coverage,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? priority,
  }) {
    return AccountCoverage(
      coverage: coverage ?? this.coverage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      priority: priority ?? this.priority,
    );
  }
}

part of '../fhir_dart.dart';

/// Adjudication totals
/// Categorized monetary totals for the adjudication.
/// Totals for amounts submitted, co-pays, benefits payable etc.
class ClaimResponseTotal extends BackboneElement implements FhirResource {
  /// Financial total for the category
  /// Monetary total amount associated with the category.
  final Money amount;

  /// Type of adjudication information
  /// A code to indicate the information type of this adjudication record. Information types may include: the value submitted, maximum values or percentages allowed or payable under the plan, amounts that the patient is responsible for in aggregate or pertaining to this item, amounts paid by other coverages, and the benefit payable for this item.
  /// For example codes indicating: Co-Pay, deductible, eligible, benefit, tax, etc.
  final CodeableConcept category;
  ClaimResponseTotal({
    required this.amount,
    required this.category,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory ClaimResponseTotal.fromJson(Map<String, dynamic> json) {
    return ClaimResponseTotal(
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amount': amount.toJson(),
        'category': category.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ClaimResponseTotal copyWith({
    Money? amount,
    CodeableConcept? category,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ClaimResponseTotal(
      amount: amount ?? this.amount,
      category: category ?? this.category,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}

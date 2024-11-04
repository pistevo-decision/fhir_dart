part of '../fhir_dart.dart';

/// Adjudication details
/// If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a simple product or service then this is the result of the adjudication of this item.
class ClaimResponseItemAdjudication extends BackboneElement
    implements FhirResource {
  /// Monetary amount associated with the category.
  /// For example: amount submitted, eligible amount, co-payment, and benefit payable.
  final Money? amount;

  /// Type of adjudication information
  /// A code to indicate the information type of this adjudication record. Information types may include the value submitted, maximum values or percentages allowed or payable under the plan, amounts that: the patient is responsible for in aggregate or pertaining to this item; amounts paid by other coverages; and, the benefit payable for this item.
  /// For example codes indicating: Co-Pay, deductible, eligible, benefit, tax, etc.
  final CodeableConcept category;

  /// Explanation of adjudication outcome
  /// A code supporting the understanding of the adjudication result and explaining variance from expected amount.
  /// For example may indicate that the funds for this benefit type have been exhausted.
  final CodeableConcept? reason;

  /// Non-monetary value
  /// A non-monetary value associated with the category. Mutually exclusive to the amount element above.
  /// For example: eligible percentage or co-payment percentage.
  final num? value;
  ClaimResponseItemAdjudication({
    this.amount,
    required this.category,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reason,
    this.value,
  });

  @override
  factory ClaimResponseItemAdjudication.fromJson(Map<String, dynamic> json) {
    return ClaimResponseItemAdjudication(
      amount: json['amount'] != null
          ? Money.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
      value: json['value'] as num?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'category': category.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reason': reason?.toJson(),
        'value': value,
      };

  @override
  ClaimResponseItemAdjudication copyWith({
    Money? amount,
    CodeableConcept? category,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? reason,
    num? value,
  }) {
    return ClaimResponseItemAdjudication(
      amount: amount ?? this.amount,
      category: category ?? this.category,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reason: reason ?? this.reason,
      value: value ?? this.value,
    );
  }
}

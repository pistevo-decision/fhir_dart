part of '../fhir_dart.dart';

/// Recipient of benefits payable
/// The party to be reimbursed for cost of the products and services according to the terms of the policy.
/// Often providers agree to receive the benefits payable to reduce the near-term costs to the patient. The insurer may decline to pay the provider and may choose to pay the subscriber instead.
class ExplanationOfBenefitPayee extends BackboneElement
    implements FhirResource {
  /// Recipient reference
  /// Reference to the individual or organization to whom any payment will be made.
  /// Not required if the payee is 'subscriber' or 'provider'.
  final Reference? party;

  /// Category of recipient
  /// Type of Party to be reimbursed: Subscriber, provider, other.
  final CodeableConcept? type;
  ExplanationOfBenefitPayee({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.party,
    this.type,
  });

  @override
  factory ExplanationOfBenefitPayee.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitPayee(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      party: json['party'] != null
          ? Reference.fromJson(json['party'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'party': party?.toJson(),
        'type': type?.toJson(),
      };

  @override
  ExplanationOfBenefitPayee copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? party,
    CodeableConcept? type,
  }) {
    return ExplanationOfBenefitPayee(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      type: type ?? this.type,
    );
  }
}

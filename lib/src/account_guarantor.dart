part of '../fhir_dart.dart';

 /// The parties ultimately responsible for balancing the Account
 /// The parties responsible for balancing the account if other payment options fall short.
class AccountGuarantor extends BackboneElement implements FhirResource {
   /// Credit or other hold applied
   /// A guarantor may be placed on credit hold or otherwise have their role temporarily suspended.
  final bool? onHold;
   /// Responsible entity
   /// The entity who is responsible.
  final Reference party;
   /// Guarantee account during
   /// The timeframe during which the guarantor accepts responsibility for the account.
  final Period? period;
  AccountGuarantor({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.onHold,
    required this.party,
    this.period,
  });
  
  @override
  factory AccountGuarantor.fromJson(Map<String, dynamic> json) {
    return AccountGuarantor(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      onHold: json['onHold'] as bool?,
      party: Reference.fromJson(json['party'] as Map<String, dynamic>),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'onHold': onHold,
      'party': party.toJson(),
      'period': period?.toJson(),
    };
  
  @override
  AccountGuarantor copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? onHold,
    Reference? party,
    Period? period,
  }) {
    return AccountGuarantor(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      onHold: onHold ?? this.onHold,
      party: party ?? this.party,
      period: period ?? this.period,
    );
  }
}

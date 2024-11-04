part of '../fhir_dart.dart';

 /// If this describes a specific package/container of the substance
 /// Substance may be used to describe a kind of substance, or a specific package/container of the substance: an instance.
class SubstanceInstance extends BackboneElement implements FhirResource {
   /// When no longer valid to use
   /// When the substance is no longer valid to use. For some substances, a single arbitrary date is used for expiry.
  final String? expiry;
   /// Identifier of the package/container
   /// Identifier associated with the package/container (usually a label affixed directly).
  final Identifier? identifier;
   /// Amount of substance in the package
   /// The amount of the substance.
  final Quantity? quantity;
  SubstanceInstance({
    this.expiry,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.quantity,
  });
  
  @override
  factory SubstanceInstance.fromJson(Map<String, dynamic> json) {
    return SubstanceInstance(
      expiry: json['expiry'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'expiry': expiry,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
    };
  
  @override
  SubstanceInstance copyWith({
    String? expiry,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    Quantity? quantity,
  }) {
    return SubstanceInstance(
      expiry: expiry ?? this.expiry,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
    );
  }
}
